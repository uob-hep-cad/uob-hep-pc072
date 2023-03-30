var diff3rptViewer = 
{
    Initialize : function ()
    {
        // load time
        //document.startTime = (new Date()).getTime();

        let cmdLine = window.arguments[0];
	    cmdLine = cmdLine.QueryInterface(Components.interfaces.nsICommandLine);
	    this.urlstr = cmdLine.handleFlagWithParam("file", false)
	    this.browser = document.getElementById("diff3report-html-browser");
	    this.browser.diff3rptViewer = this;
	    this.browser.setAttribute('src', this.urlstr);
	    document.addEventListener("ReportShown", diff3rptViewer.OnDownloadComplete, true, true);
	    document.addEventListener("NavigationOccurredEvent", diff3rptViewer.OnNaviagionOcurred, true, true);
	    document.addEventListener("FindDone", this.OnFindDone, true, true);
        this.reportTooltip = document.getElementById("diff3report-tooltip-in-report");
        this.fileUtils = new FileUtils();

        this.findCtrls = {
            "apply"         : document.getElementById("apply-find-cmd"),
            "text"          : document.getElementById("tb-find"),
            "next"          : document.getElementById("find-next-cmd"),
            "previous"      : document.getElementById("find-previous-cmd"),
            "toggle"        : document.getElementById("toggle-find-btn"),
            "show"          : document.getElementById("show-find-cmd"),
            "hide"          : document.getElementById("hide-find-cmd"),
            "toolbar"       : document.getElementById("find-toolbar"),
            "casesensitive" : document.getElementById("cb-case-sensitive-find"),
            "resultLabel"   : document.getElementById("find-results-label"),
            "currentNdx"    : -1
        };
    },
    
    OnClose : function()
    {
        if(this.urlstr.indexOf(".tmp") == -1)          // not a temp file - don't remove
            return;
        var file = new File(this.fileUtils.urlToPath(this.urlstr));
        try { file.remove(false); }
        catch(err)
        { alert("Failed to remove temp file: " + this.urlstr); }
    },
    
    OnNaviagionOcurred : function()
    {
        var browser = document.getElementById("diff3report-html-browser");
        document.getElementById("goBack-cmd").setAttribute('disabled', !browser.canGoBack);
        document.getElementById("goFwd-cmd").setAttribute('disabled', !browser.canGoForward);
    },

    OnDownloadComplete : function()
    {
        document.title = diff3rptViewer.browser.contentDocument.title;
        // disable filter buttons, which are not applicable to the current report
        var filter = parseInt(diff3rptViewer.browser.contentDocument.getElementById("main-summary").getAttribute("filter"));

        if ((filter & 0x4) == 0)
            document.getElementById("electric-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x8) == 0)
            document.getElementById("physical-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x10) == 0)
            document.getElementById("spacing-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x20) == 0)
            document.getElementById("SNS-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x400) == 0)
            document.getElementById("DFF-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x100) == 0)
            document.getElementById("property-filter-cmd").setAttribute('disabled', 'true');
        if ((filter & 0x2) == 0)
            document.getElementById("structure-filter-cmd").setAttribute('disabled', 'true');

        // load time
        //var end = (new Date()).getTime();
        //var delta = end - this.startTime;
        //var dt = new Date(delta);
        //alert(this.toString() + "Load time: " + delta.toString() + " (" + ":" + dt.getMinutes() + ":" + dt.getSeconds() + "." + dt.getMilliseconds() + "), st " + this.startTime + " end " + end);
    },

    OnSave : function ()
    {
        window.openDialog('chrome://diff3rptViewer/content/save.xul', 'saveDlg', 'chrome,modal,maximized', content.document, diff3rptViewer);
    },

    OnPrint : function (saveImmediately)
    {
        this.contentDocURL = this.browser.currentURI;
        var originalcontent = this.readFileFromURL2String(this.contentDocURL.spec);
        if(originalcontent.match('treeview.xsl'))
        {
            var mf = this.browser.contentDocument.getElementById("main-frame");
            var printcontent = originalcontent.replace('treeview.xsl', 'printable.xsl')
                .replace(// add filter setting
                "<ConstraintDifferenceReport",
                "<ConstraintDifferenceReport Filter=\"" + mf.getAttribute("filter-setting") + "\""
                );
	        var uriqi = this.contentDocURL.QueryInterface(Components.interfaces.nsIFileURL);
            var printfile = this.writeFile(uriqi.file.path + '.print', printcontent);
            // open a new window with print view
            var printurl = this.browser.currentURI.spec;
            var end = printurl.indexOf('#');
	        if(end > 0)
	            printurl = printurl.substring(0,end) + '.print';
	        var opts = 'chrome,scrollbars,modal,close=0,width=' + (content.innerWidth-5) + ',height=' + (window.innerHeight-5);
            var printDocumentWnd = window.openDialog('chrome://diff3rptViewer/content/printPreview.xul', 'printPreview', opts, printurl, printfile, saveImmediately);
            printDocumentWnd.focus();
        }
        else
            this.browser.contentWindow.print();
    },
    
    OnSelectAll : function ()
    {
        var elem = this.browser.contentDocument.getElementById("details");
        var copytext=this.browser.contentWindow.getSelection().selectAllChildren(elem);
    },

    OnCopy : function ()
    {
        var copytext = this.browser.contentWindow.getSelection().toString();
        var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
        str.data=copytext;
        
        var trans = Components.classes["@mozilla.org/widget/transferable;1"].createInstance(Components.interfaces.nsITransferable);
        trans.addDataFlavor("text/unicode");
        trans.setTransferData("text/unicode",str,copytext.length*2);        // length*2 because of unicode

        var clip = Components.classes["@mozilla.org/widget/clipboard;1"].getService(Components.interfaces.nsIClipboard);
              
        clip.emptyClipboard(clip.kGlobalClipboard);
        clip.setData(trans,null,clip.kGlobalClipboard);

    },

    OnFind: function ()
    {

        var mf = this.browser.contentDocument.getElementById("main-frame");
        var toFind = this.findCtrls.text.value;
        if(!this.findCtrls.casesensitive.checked)
            toFind = toFind.toLowerCase();
        mf.setAttribute("string-to-find", toFind);
        mf.setAttribute("case-sensitive-find", this.findCtrls.casesensitive.checked);

        this.findCtrls.resultLabel.setAttribute("value", "searching...");
        setTimeout(function ()
        {
            var evt = diff3rptViewer.browser.contentDocument.createEvent("Events");
            evt.initEvent("FindRequest", true, false);
            diff3rptViewer.browser.contentDocument.dispatchEvent(evt);
        }, 1);              // dispatch event after 1ms timeout - to make sure label has been redrawn to "searching..."
    },

    OnFindX: function(next)
    {
        var evt = this.browser.contentDocument.createEvent("Events");
        if (next)
            evt.initEvent("FindNext", true, false);
        else
            evt.initEvent("FindPrevious", true, false);

        diff3rptViewer.browser.contentDocument.dispatchEvent(evt);
    },

    OnFindDone : function()
    {
        var numMatches = diff3rptViewer.browser.contentDocument.getElementById("main-frame").getAttribute("find-match-number")
        var str;
        if (numMatches > 0)
        {
            str = "Found " + numMatches.toString() + " matches";
            diff3rptViewer.findCtrls.next.setAttribute("disabled", "false");
            diff3rptViewer.findCtrls.previous.setAttribute("disabled", "false");
        }
        else
        {
            str = "Not found";
            diff3rptViewer.findCtrls.next.setAttribute("disabled", "true");
            diff3rptViewer.findCtrls.previous.setAttribute("disabled", "true");
        }
        diff3rptViewer.findCtrls.resultLabel.setAttribute("value", str);
    },
    
    OnShowFind : function (show)
    {
        if(show == null)    
            show = this.findCtrls.toggle.checked;
        else
            this.findCtrls.toggle.checked = show;

        if (show)
        {
            this.findCtrls.toolbar.removeAttribute("style");
            this.findCtrls.toggle.setAttribute("tooltiptext", "Hide find toolbar [Esc]");
            this.findCtrls.show.setAttribute("disabled", "true");
            this.findCtrls.hide.setAttribute("disabled", "false");
            this.findCtrls.text.focus();
            this.findCtrls.resultLabel.setAttribute("value", "");
        }
        else
        {
            this.findCtrls.toolbar.setAttribute("style", "display:none");
            this.findCtrls.toggle.setAttribute("tooltiptext", "Show find toolbar [Ctrl+F]");
            this.findCtrls.show.setAttribute("disabled", "false");
            this.findCtrls.hide.setAttribute("disabled", "true");
            this.findCtrls.next.setAttribute("disabled", "true");
            this.findCtrls.previous.setAttribute("disabled", "true");
            this.findCtrls.text.value = "";
            this.OnFind();
            this.OnFindTextChanged();
        }
    },

    OnFindTextChanged : function()
    {
        this.findCtrls.apply.setAttribute("disabled", (this.findCtrls.text.value.length < 2).toString());
    },

    OnFilter : function(id, button)
    {
        var mf = this.browser.contentDocument.getElementById("main-frame");
        var val = mf.getAttribute("filter-setting");
        if (val == null)
            val = 0;
        else
            val = parseInt(val);

        var tt = button.getAttribute("tooltiptext");
        tt = tt.substring(0, tt.indexOf(":") + 1);
        if (button.checked)
        {
            val |= id;
            button.setAttribute("tooltiptext", tt + " hidden");
        }
        else
        {
            val &= ~id;
            button.setAttribute("tooltiptext", tt + " displayed");
        }

        mf.setAttribute("filter-setting", val.toString());

        // notify the document
        var evt = this.browser.contentDocument.createEvent("Events");
        evt.initEvent("FilterChangedEvent", true, false);
        this.browser.contentDocument.dispatchEvent(evt);
    },

    readFileFromURL2String : function (urlstr)
    {
        // read content
        var file = new File(this.fileUtils.urlToPath(urlstr));
        file.open('r');
        var content = file.read();
        file.close();
        return(content);
    },

    writeFile : function (filePath, contentstr)
    {
        var f = new File(filePath);
        if(!f.exists())
            f.create();
        if(!f.isWritable())
        {
            alert("Error: Cannot write to file " + filePath);
            return;
        }
        f.open('w');
        f.write(contentstr);
        f.close();
        return(f);
    },
    
    OnShowTooltip: function(tipElement)             // handle tooltips
    {
        var retVal = false;

        var titleText = null;
        var XLinkTitleText = null;

        while (!titleText && !XLinkTitleText && tipElement)     // walk through the hierarchy until found a tooltip
        {
            if (tipElement.nodeType == Node.ELEMENT_NODE) 
            {
                titleText = tipElement.getAttribute("title");
                XLinkTitleText = tipElement.getAttributeNS("http://www.w3.org/1999/xlink", "title");
            }
            tipElement = tipElement.parentNode;
        }

        var texts = [titleText, XLinkTitleText];        // can be in either location

        for (var i = 0; i < texts.length; ++i)
        {
            var t = texts[i];
            if (t && t.search(/\S/) >= 0)
            {
                this.reportTooltip.setAttribute("label", t);
                retVal = true;
            }
        }

        return retVal;
    },

    OnExpandAll: function()
    {
        var evt = diff3rptViewer.browser.contentDocument.createEvent("Events");
        evt.initEvent("ExpandAll", true, false);
        diff3rptViewer.browser.contentDocument.dispatchEvent(evt);
    },

    OnCollapseAll: function()
    {
        var evt = diff3rptViewer.browser.contentDocument.createEvent("Events");
        evt.initEvent("CollapseAll", true, false);
        diff3rptViewer.browser.contentDocument.dispatchEvent(evt);
    },
};

