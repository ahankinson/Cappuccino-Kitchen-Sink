@STATIC;1.0;p;15;AppController.jt;35202;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;AppKit/CPWebView.jI;20;AppKit/CPTextField.jI;17;AppKit/CPButton.jI;18;AppKit/CPToolbar.jI;17;AppKit/CPWindow.jI;25;AppKit/CPLevelIndicator.jI;28;AppKit/CPProgressIndicator.jI;19;AppKit/CPMenuItem.jI;26;AppKit/CPArrayController.jI;20;AppKit/CPTableView.jI;21;AppKit/CPTokenField.jI;18;AppKit/CPStepper.jI;18;AppKit/CPPopover.jI;17;AppKit/CPSlider.jI;22;AppKit/CPOutlineView.jI;16;AppKit/CPAlert.ji;15;Models/Person.ji;20;Models/TableObject.jt;34711;objj_executeFile("Foundation/CPObject.j", NO);objj_executeFile("AppKit/CPWebView.j", NO);objj_executeFile("AppKit/CPTextField.j", NO);objj_executeFile("AppKit/CPButton.j", NO);objj_executeFile("AppKit/CPToolbar.j", NO);objj_executeFile("AppKit/CPWindow.j", NO);objj_executeFile("AppKit/CPLevelIndicator.j", NO);objj_executeFile("AppKit/CPProgressIndicator.j", NO);objj_executeFile("AppKit/CPMenuItem.j", NO);objj_executeFile("AppKit/CPArrayController.j", NO);objj_executeFile("AppKit/CPTableView.j", NO);objj_executeFile("AppKit/CPTokenField.j", NO);objj_executeFile("AppKit/CPStepper.j", NO);objj_executeFile("AppKit/CPPopover.j", NO);objj_executeFile("AppKit/CPSlider.j", NO);objj_executeFile("AppKit/CPOutlineView.j", NO);objj_executeFile("AppKit/CPAlert.j", NO);objj_executeFile("Models/Person.j", YES);objj_executeFile("Models/TableObject.j", YES);WindowDidBecomeFullPlatformWindow = "WindowDidBecomeFullPlatformWindow";
WindowDidBecomeRegularWindow = "WindowDidBecomeRegularWindow";
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("theWindow"), new objj_ivar("applicationMenu"), new objj_ivar("platformifyControl"), new objj_ivar("menuModificationObserver"), new objj_ivar("disableControls"), new objj_ivar("standardButton"), new objj_ivar("roundButton"), new objj_ivar("pushOnOffButton"), new objj_ivar("toggleButton"), new objj_ivar("momentaryChangeButton"), new objj_ivar("onOffButton"), new objj_ivar("momentaryPushInButton"), new objj_ivar("momentaryPushButton"), new objj_ivar("disabledButton"), new objj_ivar("defaultButton"), new objj_ivar("aLevelIndicator"), new objj_ivar("determinateIndicator"), new objj_ivar("indeterminateIndicator"), new objj_ivar("aTokenField"), new objj_ivar("aStepperField"), new objj_ivar("aTestingWindow"), new objj_ivar("actionButton"), new objj_ivar("cancelButton"), new objj_ivar("aToolbar"), new objj_ivar("aMessageToThePeople"), new objj_ivar("asSheetControl"), new objj_ivar("showInfoAlert"), new objj_ivar("showErrorAlert"), new objj_ivar("showWarnAlert"), new objj_ivar("aWebView"), new objj_ivar("theLocationBar"), new objj_ivar("tableOneArrayController"), new objj_ivar("tableTwo"), new objj_ivar("viewBasedTable"), new objj_ivar("viewBasedTableArrayController"), new objj_ivar("thePopover"), new objj_ivar("popoverLabel"), new objj_ivar("popoverLowerRightButton"), new objj_ivar("popoverBelowButton"), new objj_ivar("popoverLowerLeftButton"), new objj_ivar("popoverLeftButton"), new objj_ivar("popoverUpperLeftButton"), new objj_ivar("popoverAboveButton"), new objj_ivar("popoverUpperRightButton"), new objj_ivar("popoverRightButton"), new objj_ivar("animatePopovers"), new objj_ivar("useHUDStyle"), new objj_ivar("hudInspectorPanel"), new objj_ivar("hudInspectorSliderRotate"), new objj_ivar("hudInspectorSliderZoom"), new objj_ivar("hudInspectorSliderCrop"), new objj_ivar("hudInspectorSliderSomething"), new objj_ivar("theOutlineView"), new objj_ivar("rootItem"), new objj_ivar("notificationCenter")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("disableControls"), function $AppController__disableControls(self, _cmd)
{
    return self.disableControls;
}
,["CPButton"]), new objj_method(sel_getUid("setDisableControls:"), function $AppController__setDisableControls_(self, _cmd, newValue)
{
    self.disableControls = newValue;
}
,["void","CPButton"]), new objj_method(sel_getUid("asSheetControl"), function $AppController__asSheetControl(self, _cmd)
{
    return self.asSheetControl;
}
,["CPButton"]), new objj_method(sel_getUid("setAsSheetControl:"), function $AppController__setAsSheetControl_(self, _cmd, newValue)
{
    self.asSheetControl = newValue;
}
,["void","CPButton"]), new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{
    ((___r1 = self.roundButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setBezelStyle:", CPRoundedBezelStyle));
    ((___r1 = self.pushOnOffButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPPushOnPushOffButton));
    ((___r1 = self.toggleButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPToggleButton));
    ((___r1 = self.toggleButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setAlternateTitle:", "Untoggle"));
    ((___r1 = self.momentaryChangeButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPMomentaryChangeButton));
    ((___r1 = self.momentaryChangeButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setAlternateTitle:", "Changed!"));
    ((___r1 = self.onOffButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPOnOffButton));
    ((___r1 = self.momentaryPushInButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPMomentaryPushInButton));
    ((___r1 = self.momentaryPushButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setButtonType:", CPMomentaryPushButton));
    ((___r1 = self.defaultButton), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setKeyEquivalent:", CPCarriageReturnCharacter));
    ((___r1 = self.aTokenField), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setObjectValue:", ["token", "field"]));
    ((___r1 = self.aTokenField), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setEditable:", YES));
    ((___r1 = self.aTokenField), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setCompletionDelay:", 0));
    var menubarIcon = ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", ((___r2 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r2 == null ? null : ___r2.isa.objj_msgSend1(___r2, "pathForResource:", "menuIcon.png")), CGSizeMake(16.0, 16.0))),
        dollarIcon = ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", ((___r2 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r2 == null ? null : ___r2.isa.objj_msgSend1(___r2, "pathForResource:", "dollarBill.png")), CGSizeMake(16.0, 16.0))),
        piggyIcon = ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", ((___r2 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r2 == null ? null : ___r2.isa.objj_msgSend1(___r2, "pathForResource:", "piggyBank.png")), CGSizeMake(16.0, 16.0))),
        moneyBagIcon = ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", ((___r2 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r2 == null ? null : ___r2.isa.objj_msgSend1(___r2, "pathForResource:", "moneyBag.png")), CGSizeMake(16.0, 16.0)));
    ((___r1 = self.applicationMenu), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setImage:", menubarIcon));
    ((___r1 = self.aWebView), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setMainFrameURL:", "http://www.cappuccino-project.org"));
    ((___r1 = self.indeterminateIndicator), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "startAnimation:", nil));
    var c = 500,
        items = ((___r1 = CPMutableArray.isa.objj_msgSend0(CPMutableArray, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    while (c--)
    {
        var obj = ((___r1 = TableObject.isa.objj_msgSend0(TableObject, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
        (obj == null ? null : obj.isa.objj_msgSend1(obj, "setColumnTwo:", c));
        switch(c % 3) {
        case 0:
            (obj == null ? null : obj.isa.objj_msgSend1(obj, "setColumnOne:", dollarIcon));
            break;
        case 1:
            (obj == null ? null : obj.isa.objj_msgSend1(obj, "setColumnOne:", piggyIcon));
            break;
        case 2:
            (obj == null ? null : obj.isa.objj_msgSend1(obj, "setColumnOne:", moneyBagIcon));
            break;
        }
        (items == null ? null : items.isa.objj_msgSend1(items, "addObject:", obj));
    }
    ((___r1 = self.tableOneArrayController), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setContent:", items));
    var itemsTwo = (items == null ? null : items.isa.objj_msgSend0(items, "copy")),
        tableTwoDataDelegate = ((___r1 = (TableTwoDataSourceAndDelegate == null ? null : TableTwoDataSourceAndDelegate.isa.objj_msgSend0(TableTwoDataSourceAndDelegate, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (tableTwoDataDelegate == null ? null : tableTwoDataDelegate.isa.objj_msgSend1(tableTwoDataDelegate, "setTheData:", itemsTwo));
    ((___r1 = self.tableTwo), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setDelegate:", tableTwoDataDelegate));
    ((___r1 = self.tableTwo), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setDataSource:", tableTwoDataDelegate));
    ((___r1 = self.tableTwo), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setAllowsMultipleSelection:", YES));
    ((___r1 = self.tableTwo), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "reloadData"));
    ((___r1 = self.hudInspectorSliderRotate), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo2-HUD")));
    ((___r1 = self.hudInspectorSliderZoom), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo2-HUD")));
    ((___r1 = self.hudInspectorSliderCrop), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo2-HUD")));
    ((___r1 = self.hudInspectorSliderSomething), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo2-HUD")));
    var ___r1, ___r2;
}
,["void","CPNotification"]), new objj_method(sel_getUid("awakeFromCib"), function $AppController__awakeFromCib(self, _cmd)
{
    var path = ((___r1 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "pathForResource:", "InitInfo.dict")),
        request = CPURLRequest.isa.objj_msgSend1(CPURLRequest, "requestWithURL:", path),
        connection = CPURLConnection.isa.objj_msgSend2(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    self.notificationCenter = CPNotificationCenter.isa.objj_msgSend0(CPNotificationCenter, "defaultCenter");
    ((___r1 = self.notificationCenter), ___r1 == null ? null : ___r1.isa.objj_msgSend(___r1, "addObserver:selector:name:object:", self.menuModificationObserver, sel_getUid("didBecomePlatformWindow:"), WindowDidBecomeFullPlatformWindow, nil));
    ((___r1 = self.notificationCenter), ___r1 == null ? null : ___r1.isa.objj_msgSend(___r1, "addObserver:selector:name:object:", self.menuModificationObserver, sel_getUid("didBecomeRegularWindow:"), WindowDidBecomeRegularWindow, nil));
    ((___r1 = self.theWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setFullPlatformWindow:", YES));
    var ___r1;
}
,["void"]), new objj_method(sel_getUid("unPlatform:"), function $AppController__unPlatform_(self, _cmd, aSender)
{
    if (((___r1 = self.theWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "isFullPlatformWindow")))
    {
        ((___r1 = self.theWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setFullPlatformWindow:", NO));
        ((___r1 = self.notificationCenter), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "postNotificationName:object:", WindowDidBecomeRegularWindow, nil));
    }
    else
    {
        ((___r1 = self.theWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setFullPlatformWindow:", YES));
        ((___r1 = self.notificationCenter), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "postNotificationName:object:", WindowDidBecomeFullPlatformWindow, nil));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $AppController__connection_didReceiveData_(self, _cmd, connection, dataString)
{
    if (!dataString)
        return;
    var data = ((___r1 = CPData.isa.objj_msgSend0(CPData, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithRawString:", dataString));
    self.rootItem = CPPropertyListSerialization.isa.objj_msgSend2(CPPropertyListSerialization, "propertyListFromData:format:", data, CPPropertyListXMLFormat_v1_0);
    ((___r1 = self.theOutlineView), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "reloadData"));
    var ___r1;
}
,["void","CPURLConnection","CPString"]), new objj_method(sel_getUid("launchWindowWithToolbar:"), function $AppController__launchWindowWithToolbar_(self, _cmd, aSender)
{
    ((___r1 = self.aToolbar), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setVisible:", YES));
    console.log(((___r1 = self.aMessageToThePeople), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")));
    ((___r1 = self.aMessageToThePeople), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setObjectValue:", "This is a mighty window with a glorious toolbar"));
    ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setDefaultButton:", self.actionButton));
    if (((___r1 = self.asSheetControl), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
    {
        (CPApp == null ? null : CPApp.isa.objj_msgSend(CPApp, "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:", self.aTestingWindow, (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow")), self, sel_getUid("didEndSheet:returnCode:contextInfo:"), nil));
    }
    else
    {
        ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "center"));
        ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "makeKeyAndOrderFront:", aSender));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("launchWindowWithoutToolbar:"), function $AppController__launchWindowWithoutToolbar_(self, _cmd, aSender)
{
    ((___r1 = self.aToolbar), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setVisible:", NO));
    ((___r1 = self.aMessageToThePeople), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setObjectValue:", "This is a boring window, unadorned by a toolbar"));
    ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setDefaultButton:", self.actionButton));
    if (((___r1 = self.asSheetControl), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
    {
        (CPApp == null ? null : CPApp.isa.objj_msgSend(CPApp, "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:", self.aTestingWindow, (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow")), self, sel_getUid("didEndSheet:returnCode:contextInfo:"), nil));
    }
    else
    {
        ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "center"));
        ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "makeKeyAndOrderFront:", aSender));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("closeSheet:"), function $AppController__closeSheet_(self, _cmd, aSender)
{
    if (((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "isSheet")))
        (CPApp == null ? null : CPApp.isa.objj_msgSend2(CPApp, "endSheet:returnCode:", self.aTestingWindow, (aSender == null ? null : aSender.isa.objj_msgSend0(aSender, "tag"))));
    else
        console.log("CLosing window with return code " + (aSender == null ? null : aSender.isa.objj_msgSend0(aSender, "tag")));
    ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "orderOut:", aSender));
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("didEndSheet:returnCode:contextInfo:"), function $AppController__didEndSheet_returnCode_contextInfo_(self, _cmd, aSheet, returnCode, contextInfo)
{
    console.log("Closing sheet with return code " + returnCode);
    ((___r1 = self.aTestingWindow), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "orderOut:", self));
    var ___r1;
}
,["void","CPWindow","int","id"]), new objj_method(sel_getUid("launchPlatformWindow:"), function $AppController__launchPlatformWindow_(self, _cmd, aSender)
{
    var platformWindow = ((___r1 = CPPlatformWindow.isa.objj_msgSend0(CPPlatformWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithContentRect:", CGRectMake(100, 100, 775, 400))),
        containerWindow = ((___r1 = CPWindow.isa.objj_msgSend0(CPWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentRect:styleMask:", CGRectMake(100, 100, 775, 400), CPClosableWindowMask | CPResizableWindowMask));
    (containerWindow == null ? null : containerWindow.isa.objj_msgSend1(containerWindow, "setFullBridge:", YES));
    (containerWindow == null ? null : containerWindow.isa.objj_msgSend1(containerWindow, "setPlatformWindow:", platformWindow));
    (containerWindow == null ? null : containerWindow.isa.objj_msgSend0(containerWindow, "center"));
    (containerWindow == null ? null : containerWindow.isa.objj_msgSend1(containerWindow, "makeKeyAndOrderFront:", aSender));
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("showInfoAlertWindow:"), function $AppController__showInfoAlertWindow_(self, _cmd, aSender)
{
    var alrt = self.isa.objj_msgSend0(self, "_createAlertWindow");
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPInformationalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "For Your Information"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "For Your Information"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "This bit of text explains why you're being told what you're being told."));
    if (((___r1 = self.asSheetControl), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
    {
        (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "beginSheetModalForWindow:", (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow"))));
    }
    else
    {
        (alrt == null ? null : alrt.isa.objj_msgSend0(alrt, "runModal"));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("showWarnAlertWindow:"), function $AppController__showWarnAlertWindow_(self, _cmd, aSender)
{
    var alrt = self.isa.objj_msgSend0(self, "_createAlertWindow");
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPWarningAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "It's getting hot in here"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "It's getting hot in here!"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "Something bad might happen if you don't do something quick!"));
    if (((___r1 = self.asSheetControl), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
    {
        (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "beginSheetModalForWindow:", (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow"))));
    }
    else
    {
        (alrt == null ? null : alrt.isa.objj_msgSend0(alrt, "runModal"));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("showErrorAlertWindow:"), function $AppController__showErrorAlertWindow_(self, _cmd, aSender)
{
    var alrt = self.isa.objj_msgSend0(self, "_createAlertWindow");
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPCriticalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Open the pod bay doors, Hal."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "Open the pod bay doors, Hal."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "I'm afraid I can't do that Dave."));
    if (((___r1 = self.asSheetControl), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
    {
        (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "beginSheetModalForWindow:", (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow"))));
    }
    else
    {
        (alrt == null ? null : alrt.isa.objj_msgSend0(alrt, "runModal"));
    }
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("_createAlertWindow"), function $AppController___createAlertWindow(self, _cmd)
{
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsSuppressionButton:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Ok"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Cancel"));
    return alrt;
    var ___r1;
}
,["CPAlert"]), new objj_method(sel_getUid("openPopover:"), function $AppController__openPopover_(self, _cmd, aSender)
{
    self.isa.objj_msgSend2(self, "initPopover:withAppearance:", self.thePopover, CPPopoverAppearanceMinimal);
    var edge = nil;
    switch((aSender == null ? null : aSender.isa.objj_msgSend0(aSender, "title"))) {
    case "Popover Below":
        edge = CPMaxYEdge;
        break;
    case "Popover Above":
        edge = CPMinYEdge;
        break;
    case "Popover Left":
    case "Popover Upper Left":
    case "Popover Lower Left":
        edge = CPMinXEdge;
        break;
    case "Popover Right":
    case "Popover Upper Right":
    case "Popover Lower Right":
        edge = CPMaxXEdge;
        break;
default:
        break;
    }
    if (((___r1 = self.useHUDStyle), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")))
        ((___r1 = self.popoverLabel), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTextColor:", CPColor.isa.objj_msgSend0(CPColor, "whiteColor")));
    else
        ((___r1 = self.popoverLabel), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTextColor:", CPColor.isa.objj_msgSend0(CPColor, "blackColor")));
    ((___r1 = self.thePopover), ___r1 == null ? null : ___r1.isa.objj_msgSend3(___r1, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, edge));
    var ___r1;
}
,["void","id"]), new objj_method(sel_getUid("initPopover:withAppearance:"), function $AppController__initPopover_withAppearance_(self, _cmd, aPopover, appearance)
{
    (aPopover == null ? null : aPopover.isa.objj_msgSend1(aPopover, "setAnimates:", ((___r1 = self.animatePopovers), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue"))));
    (aPopover == null ? null : aPopover.isa.objj_msgSend1(aPopover, "setBehavior:", CPPopoverBehaviorTransient));
    (aPopover == null ? null : aPopover.isa.objj_msgSend1(aPopover, "setAppearance:", ((___r1 = self.useHUDStyle), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "objectValue")) ? CPPopoverAppearanceHUD : CPPopoverAppearanceMinimal));
    var ___r1;
}
,["void","CPPopover","int"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $AppController__outlineView_numberOfChildrenOfItem_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    if ((theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class"))))
        return 0;
    return ((___r1 = (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Children"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "count"));
    var ___r1;
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $AppController__outlineView_child_ofItem_(self, _cmd, theOutlineView, theIndex, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return ((___r1 = (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Children"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "objectAtIndex:", theIndex));
    var ___r1;
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $AppController__outlineView_isItemExpandable_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return !(theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class")));
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $AppController__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, theColumn, theItem)
{
    if ((theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class"))))
        return theItem;
    return (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Name"));
}
,["id","CPOutlineView","CPTableColumn","id"])]);
}{var the_class = objj_allocateClassPair(CPObject, "TableTwoDataSourceAndDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("theData")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("theData"), function $TableTwoDataSourceAndDelegate__theData(self, _cmd)
{
    return self.theData;
}
,["CPArray"]), new objj_method(sel_getUid("setTheData:"), function $TableTwoDataSourceAndDelegate__setTheData_(self, _cmd, newValue)
{
    self.theData = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TableTwoDataSourceAndDelegate__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TableTwoDataSourceAndDelegate").super_class }, "init"))
    {
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TableTwoDataSourceAndDelegate__numberOfRowsInTableView_(self, _cmd, aTable)
{
    return ((___r1 = self.theData), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "count"));
    var ___r1;
}
,["int","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TableTwoDataSourceAndDelegate__tableView_objectValueForTableColumn_row_(self, _cmd, aTable, aCol, aRow)
{
    return ((___r1 = self.theData[aRow]), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "valueForKey:", (aCol == null ? null : aCol.isa.objj_msgSend0(aCol, "identifier"))));
    var ___r1;
}
,["id","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $TableTwoDataSourceAndDelegate__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, tableColumn, aRow)
{
    self.theData[aRow] = aValue;
}
,["void","CPTableView","id","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:isGroupRow:"), function $TableTwoDataSourceAndDelegate__tableView_isGroupRow_(self, _cmd, aTable, aRow)
{
    return ((___r1 = self.theData[aRow]), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "columnTwo")) % 10 === 0;
    var ___r1;
}
,["BOOL","CPTableView","int"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $TableTwoDataSourceAndDelegate__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{
    console.log("TableView acceptDrop");
}
,["BOOL","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $TableTwoDataSourceAndDelegate__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, pboard)
{
    console.log("TableView writeRowsWithIndexes");
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TableTwoDataSourceAndDelegate__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    console.log("Sort descriptors changed");
}
,["void","CPTableView","CPArray"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $TableTwoDataSourceAndDelegate__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
    console.log("TableView validateDrop");
}
,["CPDragOperation","CPTableView","id","CPInteger","CPTableViewDropOperation"])]);
}{var the_class = objj_allocateClassPair(CPObject, "ViewBasedTableDataSourceAndDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("viewBasedTable"), new objj_ivar("viewBasedTableArrayController"), new objj_ivar("viewBasedTableArray")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $ViewBasedTableDataSourceAndDelegate__init(self, _cmd)
{
    var self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("ViewBasedTableDataSourceAndDelegate").super_class }, "init");
    if (self)
    {
        console.log("View based table initialized");
        self.viewBasedTableArrayController = ((___r1 = CPArrayController.isa.objj_msgSend0(CPArrayController, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
        var path = ((___r1 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "pathForResource:", "People.plist")),
            request = CPURLRequest.isa.objj_msgSend1(CPURLRequest, "requestWithURL:", path),
            connection = CPURLConnection.isa.objj_msgSend2(CPURLConnection, "connectionWithRequest:delegate:", request, self);
        ((___r1 = self.viewBasedTable), ___r1 == null ? null : ___r1.isa.objj_msgSend(___r1, "bind:toObject:withKey:options:", "contentArray", self.viewBasedTableArrayController, "arrangedObjects", nil));
        ((___r1 = self.viewBasedTable), ___r1 == null ? null : ___r1.isa.objj_msgSend(___r1, "bind:toObject:withKey:options:", "selectionIndexes", self.viewBasedTableArrayController, "selectionIndexes", nil));
    }
    var ___r1;
}
,["id"]), new objj_method(sel_getUid("tableView:viewForTableColumn:row:"), function $ViewBasedTableDataSourceAndDelegate__tableView_viewForTableColumn_row_(self, _cmd, aTableView, aTableColumn, aRow)
{
    var aView = (aTableView == null ? null : aTableView.isa.objj_msgSend2(aTableView, "makeViewWithIdentifier:owner:", (aTableColumn == null ? null : aTableColumn.isa.objj_msgSend0(aTableColumn, "identifier")), self));
    return aView;
}
,["void","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $ViewBasedTableDataSourceAndDelegate__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, pboard)
{
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $ViewBasedTableDataSourceAndDelegate__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
}
,["CPDragOperation","CPTableView","id","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $ViewBasedTableDataSourceAndDelegate__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{
}
,["BOOL","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:heightOfRow:"), function $ViewBasedTableDataSourceAndDelegate__tableView_heightOfRow_(self, _cmd, aTableView, aRow)
{
}
,["int","CPTableView","int"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $ViewBasedTableDataSourceAndDelegate__connection_didReceiveData_(self, _cmd, connection, dataString)
{
    if (!dataString)
        return;
    var data = ((___r1 = CPData.isa.objj_msgSend0(CPData, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithRawString:", dataString)),
        deserialized = CPPropertyListSerialization.isa.objj_msgSend2(CPPropertyListSerialization, "propertyListFromData:format:", data, CPPropertyListXMLFormat_v1_0),
        people = (deserialized == null ? null : deserialized.isa.objj_msgSend1(deserialized, "objectForKey:", "Items"));
    (people == null ? null : people.isa.objj_msgSend1(people, "enumerateObjectsUsingBlock:", function(obj, idx, stop)
    {
        var person = Person.isa.objj_msgSend1(Person, "initializeWithDictionary:", obj);
        ((___r1 = self.viewBasedTableArrayController), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "addObject:", person));
        var ___r1;
    }));
    console.log(self.viewBasedTableArrayController);
    var ___r1;
}
,["void","CPURLConnection","CPString"])]);
}{var the_class = objj_allocateClassPair(CPObject, "MenuModificationObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("menuPlatformControl")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("menuPlatformControl"), function $MenuModificationObserver__menuPlatformControl(self, _cmd)
{
    return self.menuPlatformControl;
}
,["CPString"]), new objj_method(sel_getUid("setMenuPlatformControl:"), function $MenuModificationObserver__setMenuPlatformControl_(self, _cmd, newValue)
{
    self.menuPlatformControl = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $MenuModificationObserver__init(self, _cmd)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MenuModificationObserver").super_class }, "init");
    if (self)
    {
        self.menuPlatformControl = "Switch to Regular Window";
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("didBecomeRegularWindow:"), function $MenuModificationObserver__didBecomeRegularWindow_(self, _cmd, aNotification)
{
    self.menuPlatformControl = "Switch to Platform Window";
    console.log(self.menuPlatformControl);
}
,["void","CPNotification"]), new objj_method(sel_getUid("didBecomePlatformWindow:"), function $MenuModificationObserver__didBecomePlatformWindow_(self, _cmd, aNotification)
{
    console.log("Hi2!");
    self.menuPlatformControl = "Switch to Regular Window";
    console.log(self.menuPlatformControl);
}
,["void","CPNotification"])]);
}p;6;main.jt;292;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;206;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/AppKit.j", NO);objj_executeFile("AppController.j", YES);main = function(args, namedArgs)
{
    CPApplicationMain(args, namedArgs);
}
p;15;Models/Person.jt;3771;@STATIC;1.0;t;3752;{var the_class = objj_allocateClassPair(CPObject, "Person"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("picture"), new objj_ivar("firstName"), new objj_ivar("lastName"), new objj_ivar("age"), new objj_ivar("occupation")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("picture"), function $Person__picture(self, _cmd)
{
    return self.picture;
}
,["CPImage"]), new objj_method(sel_getUid("setPicture:"), function $Person__setPicture_(self, _cmd, newValue)
{
    self.picture = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("firstName"), function $Person__firstName(self, _cmd)
{
    return self.firstName;
}
,["CPString"]), new objj_method(sel_getUid("setFirstName:"), function $Person__setFirstName_(self, _cmd, newValue)
{
    self.firstName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("lastName"), function $Person__lastName(self, _cmd)
{
    return self.lastName;
}
,["CPString"]), new objj_method(sel_getUid("setLastName:"), function $Person__setLastName_(self, _cmd, newValue)
{
    self.lastName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("age"), function $Person__age(self, _cmd)
{
    return self.age;
}
,["CPNumber"]), new objj_method(sel_getUid("setAge:"), function $Person__setAge_(self, _cmd, newValue)
{
    self.age = newValue;
}
,["void","CPNumber"]), new objj_method(sel_getUid("occupation"), function $Person__occupation(self, _cmd)
{
    return self.occupation;
}
,["CPString"]), new objj_method(sel_getUid("setOccupation:"), function $Person__setOccupation_(self, _cmd, newValue)
{
    self.occupation = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $Person__init(self, _cmd)
{
    var self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Person").super_class }, "init");
    if (self)
    {
        self.firstName = "John";
        self.lastName = "Smith";
        self.age = 24;
        self.occupation = "Lawyer";
    }
    return self;
}
,["id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initializeWithDictionary:"), function $Person__initializeWithDictionary_(self, _cmd, aDictionary)
{
    var self = ((___r1 = Person.isa.objj_msgSend0(Person, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    if (self)
    {
        (self == null ? null : self.isa.objj_msgSend1(self, "setFirstName:", (aDictionary == null ? null : aDictionary.isa.objj_msgSend1(aDictionary, "valueForKey:", "firstName"))));
        (self == null ? null : self.isa.objj_msgSend1(self, "setLastName:", (aDictionary == null ? null : aDictionary.isa.objj_msgSend1(aDictionary, "valueForKey:", "lastName"))));
        (self == null ? null : self.isa.objj_msgSend1(self, "setAge:", (aDictionary == null ? null : aDictionary.isa.objj_msgSend1(aDictionary, "valueForKey:", "age"))));
        (self == null ? null : self.isa.objj_msgSend1(self, "setOccupation:", (aDictionary == null ? null : aDictionary.isa.objj_msgSend1(aDictionary, "valueForKey:", "occupation"))));
        var picture = (aDictionary == null ? null : aDictionary.isa.objj_msgSend1(aDictionary, "valueForKey:", "picture"));
        (self == null ? null : self.isa.objj_msgSend1(self, "setPicture:", ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", ((___r2 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r2 == null ? null : ___r2.isa.objj_msgSend1(___r2, "pathForResource:", (picture == null ? null : picture.isa.objj_msgSend1(picture, "valueForKey:", "image")))), CGSizeMake(128, 128)))));
    }
    return self;
    var ___r1, ___r2;
}
,["id","CPDictionary"])]);
}p;20;Models/TableObject.jt;1894;@STATIC;1.0;t;1875;{var the_class = objj_allocateClassPair(CPObject, "TableObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("columnOne"), new objj_ivar("columnTwo"), new objj_ivar("columnThree"), new objj_ivar("columnFour")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("columnOne"), function $TableObject__columnOne(self, _cmd)
{
    return self.columnOne;
}
,["CPImage"]), new objj_method(sel_getUid("setColumnOne:"), function $TableObject__setColumnOne_(self, _cmd, newValue)
{
    self.columnOne = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("columnTwo"), function $TableObject__columnTwo(self, _cmd)
{
    return self.columnTwo;
}
,["CPNumber"]), new objj_method(sel_getUid("setColumnTwo:"), function $TableObject__setColumnTwo_(self, _cmd, newValue)
{
    self.columnTwo = newValue;
}
,["void","CPNumber"]), new objj_method(sel_getUid("columnThree"), function $TableObject__columnThree(self, _cmd)
{
    return self.columnThree;
}
,["CPString"]), new objj_method(sel_getUid("setColumnThree:"), function $TableObject__setColumnThree_(self, _cmd, newValue)
{
    self.columnThree = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("columnFour"), function $TableObject__columnFour(self, _cmd)
{
    return self.columnFour;
}
,["CPString"]), new objj_method(sel_getUid("setColumnFour:"), function $TableObject__setColumnFour_(self, _cmd, newValue)
{
    self.columnFour = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TableObject__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TableObject").super_class }, "init"))
    {
        self.columnOne = nil;
        self.columnTwo = 2;
        self.columnThree = "Column Three";
        self.columnFour = "Column Four";
    }
    return self;
}
,["id"])]);
}e;