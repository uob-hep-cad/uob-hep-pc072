$(document).ready(eventManager);
document.finder = null;

var allButttons = ["Electrical_constraint", "Physical_constraint", "Spacing_constraint", "Same_Net_Spacing_constraint",
                    "Design_For_Manufacturing", "Property", "Structural"];
var allFilters = ["0x4", "0x8", "0x10", "0x20", "0x400", "0x100", "0x2"];

// cache these values
var allItemsWithFilterAttribute = [];

var selectedNode = "";

function addToolbar() {
    // toolbar already added
    var isToolBarAdded = document.getElementsByTagName("buttontoolbar");
    if (isToolBarAdded.length > 0) {
        return;
    }

    // CCMPR02017053: Don't show toolbar if no changes found
    var headerItems = document.getElementsByTagName("h1");
    for (var index = 0; index < headerItems.length; index++) {
        if (headerItems[index].innerHTML == "No changes found") {
            return false;
        }
    }

    var buttonToolBar = document.createElement("buttontoolbar");

    getAllDescendentsWithFilter();

    var dirPath = document.getElementsByTagName("title")[0].getAttribute("dirPath");
    //back button
    var img = document.createElement("img");
    img.id = "back";
    img.setAttribute("src", dirPath + "/img/back.png");
    var button = document.createElement("button");
    button.setAttribute("title", "Previous selection [Alt + Left]");
    button.appendChild(img);
    button.onclick = function () {
        OnBack();
    };
    buttonToolBar.appendChild(button);

    //next button
    img = document.createElement("img");
    img.id = "next";
    img.setAttribute("src", dirPath + "/img/next.png");
    button = document.createElement("button");
    button.setAttribute("title", "Next selection [Alt + Right]");
    button.appendChild(img);
    button.onclick = function () {
        OnNext();
    };
    buttonToolBar.appendChild(button);

    //expand button
    img = document.createElement("img");
    img.id = "expand_all";
    img.setAttribute("src", dirPath + "/img/expand_all.png");
    button = document.createElement("button");
    button.setAttribute("title", "Expand all");
    button.appendChild(img);
    button.onclick = function () {
        OnExpandAll();
    };
    buttonToolBar.appendChild(button);

    //collapse button
    img = document.createElement("img");
    img.id = "collapse_all";
    img.setAttribute("src", dirPath + "/img/collapse_all.png");
    button = document.createElement("button");
    button.setAttribute("title", "Collapse all");
    button.appendChild(img);
    button.onclick = function () {
        OnCollapseAll();
    };
    buttonToolBar.appendChild(button);

    //electrical button
    img = document.createElement("img");
    img.id = "Electrical_constraint";
    var isDisabled = !isPresentIntree("0x4");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/electrical_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/electrical_displayed.png");
    button = document.createElement("button");
    button.appendChild(img);
    button.setAttribute("title", "Toggle Electrical constraint changes: displayed");
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Electrical_constraint");
    };
    buttonToolBar.appendChild(button);

    //physical button
    img = document.createElement("img");
    img.id = "Physical_constraint";
    isDisabled =!isPresentIntree("0x8");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/physical_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/physical_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Physical constraint changes: displayed");
    button.appendChild(img);
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Physical_constraint");
    };
    buttonToolBar.appendChild(button);

    //spacing button
    img = document.createElement("img");
    img.id = "Spacing_constraint";
    isDisabled = !isPresentIntree("0x10");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/spacing_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/spacing_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Spacing constraint changes: displayed");
    button.appendChild(img);
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Spacing_constraint");
    };
    buttonToolBar.appendChild(button);

    //same net spacing button
    img = document.createElement("img");
    img.id = "Same_Net_Spacing_constraint";
    isDisabled = !isPresentIntree("0x20");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/same_net_spacing_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/same_net_spacing_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Same Net Spacing constraint changes: displayed");
    button.appendChild(img);
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Same_Net_Spacing_constraint");
    };
    buttonToolBar.appendChild(button);

    //dfm button
    img = document.createElement("img");
    img.id = "Design_For_Manufacturing";
    var isDFMDisabled = !isPresentIntree("0x400");
    if (isDFMDisabled)
        img.setAttribute("src", dirPath + "/img/dfm_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/dfm_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Design For Fabrication constraint changes: displayed");
    button.appendChild(img);
    button.disabled = isDFMDisabled;
    button.onclick = function () {
        OnToggle("Design_For_Manufacturing");
    };
    buttonToolBar.appendChild(button);

    //property spacing button
    img = document.createElement("img");
    img.id = "Property";
    isDisabled = !isPresentIntree("0x100");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/property_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/property_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Property changes: displayed");
    button.appendChild(img);
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Property");
    };
    buttonToolBar.appendChild(button);

    //structure spacing button
    img = document.createElement("img");
    img.id = "Structural";
    isDisabled = !isPresentIntree("0x2");
    if (isDisabled)
        img.setAttribute("src", dirPath + "/img/structural_disabled.png");
    else
        img.setAttribute("src", dirPath + "/img/structural_displayed.png");
    button = document.createElement("button");
    button.setAttribute("title", "Toggle Structural changes: displayed");
    button.appendChild(img);
    button.disabled = isDisabled;
    button.onclick = function () {
        OnToggle("Structural");
    };
    buttonToolBar.appendChild(button);

    var findEditBox = document.createElement("input");
    findEditBox.setAttribute("id", "find_text");
    findEditBox.setAttribute("type", "text");
    findEditBox.setAttribute("value", "");
    findEditBox.setAttribute("class", "input_box");
    buttonToolBar.appendChild(findEditBox);

    img = document.createElement("img");
    img.id = "find";
    img.setAttribute("src", dirPath + "/img/find.png");
    button = document.createElement("button");
    button.setAttribute("title", "Find");
    button.appendChild(img);
    button.onclick = function () {
        OnFind();
    };
    buttonToolBar.appendChild(button);

    img = document.createElement("img");
    img.id = "find_next";
    img.setAttribute("src", dirPath + "/img/find-next.png");
    button = document.createElement("button");
    button.setAttribute("title", "Find Next object");
    button.appendChild(img);
    button.onclick = function () {
        document.finder.OnFindNext();
    };
    buttonToolBar.appendChild(button);

    img = document.createElement("img");
    img.id = "find_prev";
    img.setAttribute("src", dirPath + "/img/find-prev.png");
    button = document.createElement("button");
    button.setAttribute("title", "Find previous object");
    button.appendChild(img);
    button.onclick = function () {
        document.finder.OnFindPrevious()
    };
    buttonToolBar.appendChild(button);

    var caseSensChekbox = document.createElement("input");
    caseSensChekbox.setAttribute("id", "case_check_box");
    caseSensChekbox.setAttribute("type", "checkbox");
    caseSensChekbox.setAttribute("value", "Submit");
    caseSensChekbox.setAttribute("class", "check_box");
    buttonToolBar.appendChild(caseSensChekbox);

    var caseSensText = document.createElement("label");
    caseSensText.setAttribute("id", "case_text");
    caseSensText.setAttribute("class", "input_box_text");
    caseSensText.innerHTML = "Case-sensitive";
    buttonToolBar.appendChild(caseSensText);

    var foundItems = document.createElement("label");
    foundItems.setAttribute("id", "found_items");
    foundItems.setAttribute("class", "input_box_text_found");
    foundItems.innerHTML = " ";
    buttonToolBar.appendChild(foundItems);

    document.body.insertBefore(buttonToolBar, document.body.firstChild);
}

// find all elements with filter attribute
function getAllDescendentsWithFilter() {
    allItemsWithFilterAttribute = document.querySelectorAll("[filter]");
}

// find if button needs to diplayed/hidden absed on filter value
function isPresentIntree(filterVal) {
    for (var index = 0; index < allItemsWithFilterAttribute.length; index++) {
        if (filterVal & allItemsWithFilterAttribute[index].getAttribute("filter")) {
            return true;
        }
    };
    return false;
}

// calculate children recursively
function updateCounts(nodes) {
    var childNumber = 0;
    var len = nodes.length;
    for (var i = 0; i < len; i++) {
        var node = nodes[i];
        var children = $("li#" + node.id + ">ul>li");
        if (children.length > 0) {
            var cn = updateCounts(children);

            var name = $("li#" + node.id + ">span.treeItemName")[0];
            var str = name.textContent;
            var ndx = str.indexOf('[');
            if (ndx == -1)                      // does not count chidren
            {
                var styleAttr = node.getAttribute("style");
                if (styleAttr != null) {
                    if (styleAttr.indexOf("none") == -1)
                        childNumber++;
                }
                else {
                    childNumber++;
                }
                continue;
            }
            str = str.substring(0, ndx + 1);  // trim the number from previous calculation

            childNumber += cn;
            str += cn.toString() + "]";
            name.textContent = str;
        }
        else {
            var styleAttr = node.getAttribute("style");
            if (styleAttr != null) {
                if (styleAttr.indexOf("none") == -1)
                    childNumber++;
            }
            else {
                childNumber++;
            }
        }
    }
    return (childNumber);
}

function OnToggle(buttonID) {
    var isButtonDisplayed = true;
    var image = document.getElementById(buttonID);

    var dirPath = document.getElementsByTagName("title")[0].getAttribute("dirPath");

    // toggle button's image
    var imageFileName = image.getAttribute("src");
    if (imageFileName.indexOf("displayed") == -1) {
        image.src = imageFileName.replace("hidden", "displayed");
        var tooltip = "Toggle " + buttonID.replace("_", " ") + " changes: displayed";
        image.parentNode.setAttribute("title", tooltip);
        isButtonDisplayed = true;
    } else {
        image.src = imageFileName.replace("displayed", "hidden");;
        var tooltip = "Toggle " + buttonID.replace("_", " ") + " changes: hidden";
        image.parentNode.setAttribute("title", tooltip);
        isButtonDisplayed = false;
    }
    
    // calculate filter value after toggling this button
    var resultantFilter = 0;
    for (var index = 0; index < allButttons.length; index++) {
        var imageFileName = document.getElementById(allButttons[index]).getAttribute("src");
        if (imageFileName.indexOf("hidden") != -1) {
            resultantFilter &= ~allFilters[index];
        }
        else {
            resultantFilter |= allFilters[index];
        }
    }

    // hide/show elements based on filter calculated above for right pane summary page
    for (var index = 0; index < allItemsWithFilterAttribute.length; index++) {
        var childNode = allItemsWithFilterAttribute[index];
        var filterVal = childNode.getAttribute("filter");
        if ((filterVal != null) && (filterVal != "") && (resultantFilter >= filterVal)) {
            if (resultantFilter & filterVal) {
                childNode.style.display = "";
            }
            else {
                childNode.style.display = "none";
            }
        }
    }

    // add filtering info to right pane at the top
    var note = $("#filter-note-in-main-summary")[0];
    var str = "";
    if (~resultantFilter) {
        var text = "Differences hidden by filter setting: ";

        if (~resultantFilter & 0x4)
            str += "electrical constraints, ";
        if (~resultantFilter & 0x8)
            str += "physical constraints, ";
        if (~resultantFilter & 0x10)
            str += "spacing constraints, ";
        if (~resultantFilter & 0x20)
            str += "same net spacing constraints, ";
        if (~resultantFilter & 0x100)
            str += "properties, ";
        if (~resultantFilter & 0x2)
            str += "structure, ";

        if (str != "") {
            var newStr = str.substring(0, str.length - 2);
            str = text + newStr;
        }
    }

    note.textContent = str;

    updateCounts($("li#main-summary>ul>li"));
    var summary = document.getElementById("main-summary").getAttribute("style");
    if (summary != null) {
        if(summary.indexOf("none") != -1)
            openSummary("main-summary");
    }
}

function updateParentChildren(addOrLess, noOfChidren) {
    var listItem = document.getElementById("main-summary-nested").getElementsByClassName("treeItemName");
    for (var index = 0; index < listItem.length; index++) {
        var elm = listItem[index].textContent;
        var indexOfElem = elm.indexOf("Constraint Sets ");
        if ((indexOfElem != -1) && (indexOfElem == 0)) {
            var indexOfBracketOpen = elm.indexOf("[");
            var indexOfBracketClosed = elm.indexOf("]");
            if (indexOfBracketOpen != -1 && indexOfBracketClosed != -1) {
                var noOfTotalChildren = elm.substring(indexOfBracketOpen + 1, indexOfBracketClosed);

                var resultedChildren = 0;
                if (addOrLess == true) { //button is enabled
                    resultedChildren = +noOfTotalChildren + +noOfChidren;
                }
                else {
                    resultedChildren = noOfTotalChildren - noOfChidren;
                }
                listItem[index].textContent = "Constraint Sets [" + resultedChildren + "]";
            }
            break;
        }
    }

    //noOfTotalItemsToggled = 0;
}

function getConstraints(treeNodeName) {
    var counter = 0;
    var listItem = document.getElementById("main-summary-nested").getElementsByClassName("treeItemName");
    for (var index = 0; index < listItem.length; index++) {
        var elm = listItem[index].textContent;
        var indexOfElem = elm.indexOf(treeNodeName);
        if ((indexOfElem != -1) && (indexOfElem == 0)) {
            var indexOfBracketOpen = elm.indexOf("[");
            var indexOfBracketClosed = elm.indexOf("]");
            if (indexOfBracketOpen != -1 && indexOfBracketClosed != -1) {
                var noOfItems = elm.substring(indexOfBracketOpen + 1, indexOfBracketClosed);
                return noOfItems;
            }
        }
    }

    return 0;
}

function getID(treeNodeName) {
    var parentIDs = [];
    var counter = 0;
    var listItem = document.getElementById("main-summary-nested").getElementsByClassName("treeItemName");
    for (var index = 0; index < listItem.length; index++) {
        var elm = listItem[index].textContent;
        var indexOfElem = elm.indexOf(treeNodeName);
        if ((indexOfElem != -1) && (indexOfElem == 0)) {
            parentIDs[counter++] = listItem[index].parentNode.id;
        }
    }

    return parentIDs;
}

function getDFMConstraints() {
    var parentIDs = [];
    var totalNoOfChidren = 0;
    var counter = 0;
    var listItem = document.getElementById("main-summary-nested").getElementsByClassName("treeItemName");
    for (var index = 0; index < listItem.length; index++) {
        var elm = listItem[index].textContent;
        var indexOfElem = elm.toUpperCase().indexOf('DFF');
        if (indexOfElem == -1) {
            indexOfElem = elm.toUpperCase().indexOf('DFA');
            if (indexOfElem == -1) {
                indexOfElem = elm.toUpperCase().indexOf('DFT');
            }
        }
        if ((indexOfElem != -1) && (indexOfElem == 0)) {
            var indexOfBracketOpen = elm.indexOf("[");
            var indexOfBracketClosed = elm.indexOf("]");
            if (indexOfBracketOpen != -1 && indexOfBracketClosed != -1) {
                var noOfItems = elm.substring(indexOfBracketOpen + 1, indexOfBracketClosed);
                totalNoOfChidren += (+noOfItems);
            }
            parentIDs[counter] = listItem[index].parentNode.id;
            ++counter;

        }
    }

    return totalNoOfChidren;
}

function getDFMID() {
    var parentIDs = [];
    var counter = 0;
    var listItem = document.getElementById("main-summary-nested").getElementsByClassName("treeItemName");
    for (var index = 0; index < listItem.length; index++) {
        var elm = listItem[index].textContent;
        var indexOfElem = elm.toUpperCase().indexOf('DFF');
        if (indexOfElem == -1) {
            indexOfElem = elm.toUpperCase().indexOf('DFA');
            if (indexOfElem == -1) {
                indexOfElem = elm.toUpperCase().indexOf('DFT');
            }
        }
        if ((indexOfElem != -1) && (indexOfElem == 0)) {
            parentIDs[counter] = listItem[index].parentNode.id;
            ++counter;

        }
    }

    return parentIDs;
}


function browserSpecificObj() {
    try {
        this.notifyViewer = function () { }            // stub - needed only in the diff3rptViewer

        if (navigator.appName == "Microsoft Internet Explorer") {
            this.setEvents = function () {
                $("a").click(function (e) {
                    location = $(this).attr('href');
                    handleHashChange();
                });
            }
            this.openSummary = handleHashChange;
            this.getHeight = function ()
            { return ($("body").height() - 50); }
        }
        else {
            this.setEvents = function () {
                $("a").click(function (e) {
                    if ($(this).attr('href').substring(0, 7) == "file://") {
                        window.open($(this).attr('href'), '_blank', 'menubar=0,scrollbars=1');
                        return false;
                    }
                });
            }
            this.openSummary = function () { }
            this.getHeight = function () {
                return (window.innerHeight - 100);
            }
            if (("buildID" in navigator) && (navigator.buildID == "diff3rptViewer")) {
                this.notifyViewer = function () {
                    var evt = document.createEvent("Events");
                    evt.initEvent("NavigationOccurredEvent", true, false);
                    document.dispatchEvent(evt);
                }

                document.addEventListener("FilterChangedEvent", OnFilterSettingChanged, true, true);
                document.addEventListener("FindRequest", OnFind, true, true);
                document.addEventListener("ExpandAll", OnExpandAll, true, true);
                document.addEventListener("CollapseAll", OnCollapseAll, true, true);
            }
        }
    }
    catch (err)
    { alert(err); }
}

var browserSpecific = new browserSpecificObj();

window.onresize = fixMainframe;
// set up go to anchor handlers
if ("onhashchange" in window)  // event supported?
    window.onhashchange = handleHashChange;
else { // event not supported:
    var storedHash = window.location.hash;
    window.setInterval(
        function () {
            if (window.location.hash != storedHash) {
                storedHash = window.location.hash;
                handleHashChange();
            }
        }, 100);
}


function eventManager(e) {
    fixMainframe();
    handleHashChange();

    // tree view management
    $(".treeview li").click(handleSelect);
    $("div.hitarea").click(handleExpandCollapse);

    browserSpecific.setEvents();

    // resizing mamangement
    var resizing = null;

    $("td.vsplitter").mousedown(function (e) {
        resizing = new splitterObj($(this), true, e.pageX);
    });

    $("td.hsplitter").mousedown(function (e) {
        resizing = new splitterObj($(this), false, e.pageY);
    });

    $(document).mousemove(function (e) {
        if (resizing != null) {
            resizing.resize(e.pageX, e.pageY);
        }
    });

    $(document).mouseup(function () {
        if (resizing != null)
            resizing = null;
    });
}

function splitterObj(splitter, vertical, coord) {
    var paneID = splitter.attr("ppane");
    this.ppane = $("#" + paneID);
    this.pcontent = $("#" + paneID + " div.paneCont");
    paneID = splitter.attr("npane");
    this.npane = $("#" + paneID);
    this.ncontent = $("#" + paneID + " div.paneCont");
    if (vertical) {
        this.PstartSize = this.ppane.width();
        this.NstartSize = this.npane.width();
    }
    else {
        this.PstartSize = this.ppane.height();
        this.NstartSize = this.npane.height();
    }
    this.start = coord;
    this.vertical = vertical;

    this.resize = function (X, Y) {
        if (this.vertical) {
            var delta = X - this.start;
            this.pcontent.width(this.PstartSize + delta);
            this.ppane.width(this.PstartSize + delta);
            this.ncontent.width(this.NstartSize - delta);
            this.npane.width(this.NstartSize - delta);
        }
        else {
            var delta = Y - this.start;
            this.pcontent.height(this.PstartSize + delta);
            this.ppane.height(this.PstartSize + delta);
            this.ncontent.height(this.NstartSize - delta);
            this.npane.height(this.NstartSize - delta);
        }
    }
}

function OnBack() {
    if (selectedNode != "Summary")
        window.history.back();
}

function OnNext() {
    window.history.forward();
}

function OnExpandAll() {
    var nodes = $("td#treeview li.collapsed");
    nodes.toggleClass("collapsed");
    nodes.toggleClass("expanded");
}

function OnCollapseAll() {
    var nodes = $("td#treeview li.expanded");
    nodes.toggleClass("collapsed");
    nodes.toggleClass("expanded");
}

function handleExpandCollapse() {
    var id = $(this).attr("id");
    id = id.replace("-hitarea", "");
    doExpandCollapse(id);
    return (false);
}

function handleSelect() {
    var id = $(this).attr("id");
    openSummary(id);
    selectTreeNode(id);
    return (false);
}

function doExpandCollapse(id) {
    var parent = $("li#" + id);
    if (parent.length == 0)             // the case of summary-notes
        parent = $("div#" + id);
    parent.toggleClass("collapsed");
    parent.toggleClass("expanded");
}

/// <summary>makes sure the given node is visible by expanding all its parents</summary>
/// <param name="nameNode">the DOM element specifyint the span.treeViewName of the node in question</param>
function expandTreeNodesParents(nameNode) {
    var ul = nameNode;		// for the first time ul is a span (name node), whose parent is li - anyways, they both have the same parent
    var li;
    do {
        li = ul.parentNode;
        if (li.className.search("collapsed") >= 0)
            doExpandCollapse(li.id);
        ul = li.parentNode;
    } while (ul.nodeName.toLowerCase() == "ul");
}

function selectTreeNode(id) {
    if ($("#treeview").length == 0)
        return;                 // no treeview - e.g. when no changes were found
    if (id.substring(0, 1) != "#")
        id = "#" + id;

    $(".treeview span.selected").removeClass("selected");
    var TVnameNode = $("li" + id + ">span.treeItemName");
    TVnameNode.addClass("selected");
    expandTreeNodesParents(TVnameNode[0]);

    selectedNode = document.getElementsByClassName("treeItemName selected")[0].innerHTML;
}

function openSummary(id) {
    location.hash = "#" + id;
    browserSpecific.openSummary();
}

function handleHashChange() {
    if (location.hash.length == 0) {
        location.hash = "#main-summary";
    }

    $("div#hidden-cache").append($("td#details.pane div.paneCont").children());
    $("td#details.pane div.paneCont").append($("div#hidden-cache div" + location.hash + "-cache"));
    selectTreeNode(location.hash);

    browserSpecific.notifyViewer();
    applyFilter("td#details");                     // filter setting did not change => apply only to details pane - leave treeveiw alone

    //alert("debugging");
    //OnFind();
    if (document.finder)
        document.finder.ApplyToPage();
}

function fixMainframe() {
    var H = browserSpecific.getHeight();
    $("tr#mainRow div.paneCont").height(H);
    $("tr#mainRow").height(H);
}

function FinderObj() {
    this.str = "";
    this.ignoreCase = true;
    this.found = new Array();
    this.currentNdx = -1;

    var case_sensitive = document.getElementById('case_check_box');
    if (case_sensitive.checked == true)
        this.ignoreCase = false;

    // finds the nodes containing the text within the scope
    this.FindNodes = function (scope, rx) {
        var strsToFind = [];
        if (this.ignoreCase) {
            var matches = scope.text().match(rx);
            if (matches == null)
                return $();
            for (var i = 0; i < matches.length; i++) {
                if (strsToFind.indexOf(matches[i]) == -1)         // not in the array
                    strsToFind.push(matches[i]);
            }
        }
        else
            strsToFind.push(this.str);

        var nodes = $();
        for (var i = 0; i < strsToFind.length; i++)
            nodes = nodes.add(scope.find(":contains(" + strsToFind[i] + ")"));

        // we need only the leaf nodes, but the :contains() query returns all parents as well.
        for (var i = 1; i < nodes.length; i++)                      // do not cache length - it changes; do not process very first element, because nodes are sorted in parent->child order and we need the leaf node => the very first one would be a leaf as well
            nodes = nodes.not($(nodes[nodes.length - i]).parents());

        return nodes;
    }

    this.OnFind = function () {
        if (this.found.length > 0)
            $(".found").removeClass("found");       // clear previous results

        var mf = $("#main-frame");
        this.str = document.getElementById("find_text").value;//mf.attr("string-to-find");
        this.found = [];                            // empty the list of IDs
        if (this.str.length > 0) {
            //this.ignoreCase = (mf.attr("case-sensitive-find") == "false");
            if (this.ignoreCase)
                this.str = this.str.toLowerCase();

            var scope = $("#hidden-cache");
            // would be faster to search a lowercase copy - anyway, we need only ids - not the actual elements - so to find copies is good enough
            if (this.ignoreCase)
                var scope = $("<div>" + scope.html().toLowerCase() + "</div>");

            var divs = scope.find("div[id$='-cache']:contains(" + this.str + ")");

            var nDivs = divs.length;
            for (var i = 0; i < nDivs; i++) {
                if (divs[i].innerHTML.indexOf(this.str) > -1) {
                    var id = divs[i].id.replace("-cache", "");
                    var treeItemName = $("td#treeview #" + id + ">span.treeItemName");
                    this.found.push({ "id": id, "sortNdx": treeItemName.parent().attr("ndx") });
                    treeItemName.addClass("found");
                    expandTreeNodesParents(treeItemName[0]);
                }
            }

            this.found.sort(function (a, b) {
                var aa = a.sortNdx.split(".");
                var bb = b.sortNdx.split(".");
                for (var i = 1; i < aa.length && i < bb.length; i++)     // start from 1, because 0 element is ""
                {
                    if (aa[i] != bb[i])
                        return aa[i] - bb[i];
                }
                return aa.length - bb.length;
            });
        }
        mf.attr("find-match-number", this.found.length.toString())
        this.ApplyToPage();

        OnFindDone();
    }

    this.ApplyToPage = function () {
        var pane = $("td#details");

        // 1) remove previous find results
        var prev = pane.find("span.generatedbyfind");
        var len = prev.length;
        for (var i = 0; i < len; i++) {
            var to = prev[i].textContent;
            var from = "<span class=\"" + prev[i].className + "\">" + to + "</span>"; // outerHTML can be undefined;
            prev[i].parentNode.innerHTML = prev[i].parentNode.innerHTML.replace(from, to);
        }

        if (this.str.length == 0)
            return;

        var modifiers = "g";
        if (this.ignoreCase)
            modifiers += "i";

        // 2) apply new find
        var rx = new RegExp(this.str, modifiers);
        var nodes = this.FindNodes(pane, rx);

        len = nodes.length;
        for (var i = 0; i < len; i++) {
            if (nodes[i].innerHTML.match(rx).length == nodes[i].textContent.match(rx).length)   // make sure all the matches are in the text content
            {
                nodes[i].innerHTML = nodes[i].innerHTML.replace(rx, function (str)
                { return "<span class=\"found generatedbyfind\">" + str + "</span>"; }
                );
                var nonScalar = $(nodes[i]).parents().filter(".nonScalarDiff");
                if (nonScalar.length > 0) {
                    nonScalar.removeClass(PerLyrClsNames.D);
                    if (nodes[i].tagName.toLowerCase() == "span") {
                        nonScalar.addClass(PerLyrClsNames.S);
                        nonScalar.removeClass(PerLyrClsNames.A);
                    }
                    else {
                        nonScalar.removeClass(PerLyrClsNames.S);
                        nonScalar.addClass(PerLyrClsNames.A);
                    }
                }
            }
            // otherwise, leave unmakred... - maybe somewhat of an overkill, but safer this way
        }
    }

    this.OnFindNext = function () {
        if (++document.finder.currentNdx >= document.finder.found.length)
            document.finder.currentNdx = 0;
        openSummary(document.finder.found[document.finder.currentNdx].id);
        selectTreeNode(document.finder.found[document.finder.currentNdx].id);
    }

    this.OnFindPrevious = function () {
        if (--document.finder.currentNdx < 0)
            document.finder.currentNdx = document.finder.found.length - 1;
        openSummary(document.finder.found[document.finder.currentNdx].id);
        selectTreeNode(document.finder.found[document.finder.currentNdx].id);
    }

    document.addEventListener("FindNext", this.OnFindNext, true, true);
    document.addEventListener("FindPrevious", this.OnFindPrevious, true, true);
}

function OnFind() {
    $(".found").removeClass("found");       // clear previous results

    var foundItem = document.getElementById("found_items");
    foundItem.innerHTML = "Searching...";

    document.finder = new FinderObj();

    document.finder.OnFind();
}

function OnFindDone() {
    var numMatches = document.getElementById("main-frame").getAttribute("find-match-number");
    var str;
    if (numMatches > 0)
    {
        str = "Found " + numMatches.toString() + " matches";
    }
    else
    {
        str = "Not found";
    }

    var foundItem = document.getElementById("found_items");
    foundItem.innerHTML = str;
}

