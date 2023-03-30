var ppreview = 
{
    Initialize : function ()
    {
        //content.location = window.arguments[0];
        document.fileToRemove = window.arguments[1];
        this.browser = document.getElementById("printPreview-html-browser");
        this.browser.setAttribute("src", window.arguments[0]);

        if (window.arguments[2])
            this.browser.addEventListener("DOMContentLoaded", ppreview.OnSave, true, true);

        this.fileUtils = new FileUtils();
    },
    
    OnPrint : function()
    {
        content.print();
        this.Close();
    },
    
    Close : function()
    {
        try { document.fileToRemove.remove(false); }
        catch(err)
        { ; }
        content.close();
    },

    OnSave : function ()
    {
        // create a file picker dialog
        var nsIFilePicker = Components.interfaces.nsIFilePicker;
        var fp = Components.classes["@mozilla.org/filepicker;1"].createInstance(nsIFilePicker);
    	
        // initialize the file picker dialog
        fp.init(window, "Select a file", nsIFilePicker.modeSave);
        fp.appendFilter("HTML files (*.htm)", "*.htm", "All files", "*.*");
        fp.defaultExtension = ".htm";
        // set initial directory to cwd
        fp.displayDirectory = Components.classes["@mozilla.org/file/directory_service;1"]
                                     .getService(Components.interfaces.nsIDirectoryServiceProvider)
                                     .getFile("CurWorkD",{});

        var res= fp.show();
        if ((res == nsIFilePicker.returnOK) || (res == nsIFilePicker.returnReplace))
            ppreview.writeFile(fp.file.path, ppreview.getFileContent());

        if (window.arguments[2])
            ppreview.Close();
    },

    writeFile: function (filePath, contentstr)
    {
        var f = new File(filePath);
        if (!f.exists())
            f.create();
        if (!f.isWritable())
        {
            alert("Error: Cannot write to file " + filePath);
            return;
        }
        f.open('w');
        f.write(contentstr);
        f.close();
    },

    embedStyles: function (rootNode)
    {
        var lnks = rootNode.getElementsByTagName("link");
        var head = rootNode.firstChild;
        for (var i = 0; i < lnks.length; i++)
        {
            var urlstr = lnks[i].getAttribute("href");
            var tp = lnks[i].getAttribute("type");
            if (lnks[i].getAttribute("rel") != "stylesheet")
            {
                alert("Failed to embed the link to " + urlstr);
                continue;
            }
            var content = this.readFileFromURL2String(urlstr);
            head.removeChild(lnks[i]);
            var newNode = head.ownerDocument.createElement("style");
            newNode.setAttribute("type", tp);
            newNode.textContent = content;						// embed the content
            head.appendChild(newNode);
        }
    },

    readFileFromURL2String: function (urlstr)
    {
        // read content
        var file = new File(this.fileUtils.urlToPath(urlstr));
        file.open('r');
        var content = file.read();
        file.close();
        return (content);
    },

    getFileContent: function ()
    {
        var s = new XMLSerializer();
        var copy = this.browser.contentDocument.documentElement.cloneNode(true);
        this.embedStyles(copy);
        // remove script links
        var scrs = copy.getElementsByTagName("script");
        var head = copy.firstChild;
        for (var i = 0; i < scrs.length; i++)
            head.removeChild(scrs[i]);

        var string = s.serializeToString(copy);
        return (string);
    }

};
