/*
 * AppController.j
 * New-Cappuccino-Sample-Controls
 *
 * Created by You on February 3, 2013.
 * Copyright 2013, Your Company All rights reserved.
 *
 */

@import <Foundation/CPObject.j>
@import <AppKit/CPWebView.j>
@import <AppKit/CPTextField.j>
@import <AppKit/CPButton.j>
@import <AppKit/CPToolbar.j>
@import <AppKit/CPWindow.j>
@import <AppKit/CPLevelIndicator.j>
@import <AppKit/CPProgressIndicator.j>
@import <AppKit/CPMenuItem.j>
@import <AppKit/CPArrayController.j>
@import <AppKit/CPTableView.j>
@import <AppKit/CPTokenField.j>

@import "Models/Person.j"
@import "Models/TableObject.j"

WindowDidBecomeFullPlatformWindow = @"WindowDidBecomeFullPlatformWindow";
WindowDidBecomeRegularWindow = @"WindowDidBecomeRegularWindow";

@implementation AppController : CPObject
{
    @outlet     CPWindow            theWindow; //this "outlet" is connected automatically by the Cib
    @outlet     CPMenuItem          applicationMenu;
    @outlet     CPMenuItem          platformifyControl;
    @outlet     CPObject            menuModificationObserver;
    // Buttons
    @outlet     CPButton            standardButton;
    @outlet     CPButton            roundButton;
    @outlet     CPButton            pushOnOffButton;
    @outlet     CPButton            toggleButton;
    @outlet     CPButton            momentaryChangeButton;
    @outlet     CPButton            onOffButton;
    @outlet     CPButton            momentaryPushInButton;
    @outlet     CPButton            momentaryPushButton;
    @outlet     CPButton            disabledButton;
    @outlet     CPButton            defaultButton;

    @outlet     CPLevelIndicator    aLevelIndicator;
    @outlet     CPProgressIndicator determinateIndicator;
    @outlet     CPProgressIndicator indeterminateIndicator;

    @outlet     CPTokenField        aTokenField;

    @outlet     CPWindow            aTestingWindow;
    @outlet     CPButton            actionButton;
    @outlet     CPButton            cancelButton;
    @outlet     CPToolbar           aToolbar;
    @outlet     CPTextField         aMessageToThePeople;

    @outlet     CPButton            asSheetControl  @accessors;
    @outlet     CPButton            showInfoAlert;
    @outlet     CPButton            showErrorAlert;
    @outlet     CPButton            showWarnAlert;

    @outlet     CPWebView           aWebView;
    @outlet     CPTextField         theLocationBar;

    @outlet     CPArrayController   tableOneArrayController;
    @outlet     CPTableView         tableTwo;
    @outlet     CPTableView         viewBasedTable;
    @outlet     CPArrayController   viewBasedTableArrayController;

    @outlet     CPPopover           thePopover;
    @outlet     CPTextField         popoverLabel;
    @outlet     CPButton            popoverLowerRightButton;
    @outlet     CPButton            popoverBelowButton;
    @outlet     CPButton            popoverLowerLeftButton;
    @outlet     CPButton            popoverLeftButton;
    @outlet     CPButton            popoverUpperLeftButton;
    @outlet     CPButton            popoverAboveButton;
    @outlet     CPButton            popoverUpperRightButton;
    @outlet     CPButton            popoverRightButton;
    @outlet     CPButton            animatePopovers;
    @outlet     CPButton            useHUDStyle;

    @outlet     CPPanel             hudInspectorPanel;
    @outlet     CPSlider            hudInspectorSliderRotate;
    @outlet     CPSlider            hudInspectorSliderZoom;
    @outlet     CPSlider            hudInspectorSliderCrop;
    @outlet     CPSlider            hudInspectorSliderSomething;

    @outlet     CPOutlineView           theOutlineView;
                CPDictionary            rootItem;
                CPNotificationCenter    notificationCenter;

}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
    [roundButton setBezelStyle:CPRoundedBezelStyle];
    [pushOnOffButton setButtonType:CPPushOnPushOffButton];
    [toggleButton setButtonType:CPToggleButton];
    [toggleButton setAlternateTitle:@"Untoggle"];

    [momentaryChangeButton setButtonType:CPMomentaryChangeButton];
    [momentaryChangeButton setAlternateTitle:@"Changed!"];

    [onOffButton setButtonType:CPOnOffButton];
    [momentaryPushInButton setButtonType:CPMomentaryPushInButton];
    [momentaryPushButton setButtonType:CPMomentaryPushButton];

    [defaultButton setKeyEquivalent:CPCarriageReturnCharacter];

    [aTokenField setObjectValue:["token", "field"]];
    [aTokenField setEditable:YES];
    [aTokenField setCompletionDelay:0];

    var menubarIcon = [[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:@"menuIcon.png"]
                                       size:CGSizeMake(16.0, 16.0)],
        dollarIcon  = [[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:@"dollarBill.png"]
                                       size:CGSizeMake(16.0, 16.0)],
        piggyIcon   = [[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:@"piggyBank.png"]
                                       size:CGSizeMake(16.0, 16.0)],
        moneyBagIcon = [[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:@"moneyBag.png"]
                                        size:CGSizeMake(16.0, 16.0)];

    [applicationMenu setImage:menubarIcon];
    [aWebView setMainFrameURL:@"http://www.cappuccino-project.org"];


    var c = 500,
        items = [[CPMutableArray alloc] init];

    while (c--)
    {
        var obj = [[TableObject alloc] init];
        [obj setColumnTwo:c];
        switch (c % 3)
        {
            case 0:
                [obj setColumnOne:dollarIcon];
                break;

            case 1:
                [obj setColumnOne:piggyIcon];
                break;

            case 2:
                [obj setColumnOne:moneyBagIcon];

                break;
        }
        [items addObject:obj];
    }

    // table one is a new-style bindings-controlled table with an array controller
    // backing it.
    [tableOneArrayController setContent:items];

    // table two is a traditional delegate-style table
    var itemsTwo = [items copy],
        tableTwoDataDelegate = [[TableTwoDataSourceAndDelegate alloc] init];
    [tableTwoDataDelegate setTheData:itemsTwo];

    [tableTwo setDelegate:tableTwoDataDelegate];
    [tableTwo setDataSource:tableTwoDataDelegate];
    [tableTwo setAllowsMultipleSelection:YES];
    [tableTwo reloadData];

    [hudInspectorSliderRotate setTheme:[CPTheme themeNamed:@"Aristo2-HUD"]];
    [hudInspectorSliderZoom setTheme:[CPTheme themeNamed:@"Aristo2-HUD"]];
    [hudInspectorSliderCrop setTheme:[CPTheme themeNamed:@"Aristo2-HUD"]];
    [hudInspectorSliderSomething setTheme:[CPTheme themeNamed:@"Aristo2-HUD"]];

}

- (void)awakeFromCib
{
    var path = [[CPBundle mainBundle] pathForResource:@"InitInfo.dict"],
        request = [CPURLRequest requestWithURL:path],
        connection = [CPURLConnection connectionWithRequest:request delegate:self];

    notificationCenter = [CPNotificationCenter defaultCenter];

    [notificationCenter addObserver:menuModificationObserver
                        selector:@selector(didBecomePlatformWindow:)
                        name:WindowDidBecomeFullPlatformWindow
                        object:nil];

    [notificationCenter addObserver:menuModificationObserver
                        selector:@selector(didBecomeRegularWindow:)
                        name:WindowDidBecomeRegularWindow
                        object:nil];

    [theWindow setFullPlatformWindow:YES];
}

- (@action)unPlatform:(id)aSender
{
    if ([theWindow isFullPlatformWindow])
    {
        [theWindow setFullPlatformWindow:NO];
        [notificationCenter postNotificationName:WindowDidBecomeRegularWindow
                            object:nil];
    }
    else
    {
        [theWindow setFullPlatformWindow:YES];
        [notificationCenter postNotificationName:WindowDidBecomeFullPlatformWindow
                            object:nil];
    }
}

#pragma mark -
#pragma mark CPURLConnection Delegate

- (void)connection:(CPURLConnection)connection didReceiveData:(CPString)dataString
{
    if (!dataString)
        return;

    var data = [[CPData alloc] initWithRawString:dataString];
    rootItem = [CPPropertyListSerialization propertyListFromData:data format:CPPropertyListXMLFormat_v1_0];
    [theOutlineView reloadData];
}

- (IBAction)launchWindowWithToolbar:(id)aSender
{
    [aToolbar setVisible:YES];
    console.log([aMessageToThePeople objectValue]);
    [aMessageToThePeople setObjectValue:@"This is a mighty window with a glorious toolbar"];
    [aTestingWindow setDefaultButton:actionButton];

    if ([asSheetControl objectValue])
    {
        [CPApp beginSheet:aTestingWindow
               modalForWindow:[CPApp mainWindow]
               modalDelegate:self
               didEndSelector:@selector(didEndSheet:returnCode:contextInfo:)
               contextInfo:nil];
    }
    else
    {
        [aTestingWindow center];
        [aTestingWindow makeKeyAndOrderFront:aSender];
    }
}

- (IBAction)launchWindowWithoutToolbar:(id)aSender
{
    [aToolbar setVisible:NO];
    [aMessageToThePeople setObjectValue:@"This is a boring window, unadorned by a toolbar"];
    [aTestingWindow setDefaultButton:actionButton];

    if ([asSheetControl objectValue])
    {
        [CPApp beginSheet:aTestingWindow
               modalForWindow:[CPApp mainWindow]
               modalDelegate:self
               didEndSelector:@selector(didEndSheet:returnCode:contextInfo:)
               contextInfo:nil];
    }
    else
    {
        [aTestingWindow center];
        [aTestingWindow makeKeyAndOrderFront:aSender];
    }
}

#pragma mark -
#pragma mark Sheet Delegate Methods

- (IBAction)closeSheet:(id)aSender
{
    if ([aTestingWindow isSheet])
        [CPApp endSheet:aTestingWindow returnCode:[aSender tag]];
    else
        console.log("CLosing window with return code " + [aSender tag]);
        [aTestingWindow orderOut:aSender];
}

- (void)didEndSheet:(CPWindow)aSheet returnCode:(int)returnCode contextInfo:(id)contextInfo
{
    console.log("Closing sheet with return code " + returnCode);
    [aTestingWindow orderOut:self];
}


- (IBAction)launchPlatformWindow:(id)aSender
{
    var platformWindow = [[CPPlatformWindow alloc] initWithContentRect:CGRectMake(100,100,775,400)],
        containerWindow = [[CPWindow alloc] initWithContentRect:CGRectMake(100, 100, 775, 400) styleMask:CPClosableWindowMask | CPResizableWindowMask];

    [containerWindow setFullBridge:YES];
    [containerWindow setPlatformWindow:platformWindow];

    [containerWindow center];
    [containerWindow makeKeyAndOrderFront:aSender];
}

- (IBAction)showInfoAlertWindow:(id)aSender
{
    var alrt = [self _createAlertWindow];
    [alrt setAlertStyle:CPInformationalAlertStyle];
    [alrt setTitle:@"For Your Information"];
    [alrt setMessageText:@"For Your Information"];
    [alrt setInformativeText:@"This bit of text explains why you're being told what you're being told."];

    if ([asSheetControl objectValue])
    {
        [alrt beginSheetModalForWindow:[CPApp mainWindow]];
    }
    else
    {
        [alrt runModal];
    }
}

- (IBAction)showWarnAlertWindow:(id)aSender
{
    var alrt = [self _createAlertWindow];
    [alrt setAlertStyle:CPWarningAlertStyle];
    [alrt setTitle:@"It's getting hot in here"];
    [alrt setMessageText:@"It's getting hot in here!"];
    [alrt setInformativeText:@"Something bad might happen if you don't do something quick!"];

    if ([asSheetControl objectValue])
    {
        [alrt beginSheetModalForWindow:[CPApp mainWindow]];
    }
    else
    {
        [alrt runModal];
    }
}

- (IBAction)showErrorAlertWindow:(id)aSender
{
    var alrt = [self _createAlertWindow];
    [alrt setAlertStyle:CPCriticalAlertStyle];
    [alrt setTitle:@"Open the pod bay doors, Hal."];
    [alrt setMessageText:@"Open the pod bay doors, Hal."];
    [alrt setInformativeText:@"I'm afraid I can't do that Dave."];

    if ([asSheetControl objectValue])
    {
        [alrt beginSheetModalForWindow:[CPApp mainWindow]];
    }
    else
    {
        [alrt runModal];
    }
}

- (CPAlert)_createAlertWindow
{
    var alrt = [[CPAlert alloc] init];
    [alrt setShowsSuppressionButton:YES];
    [alrt addButtonWithTitle:@"Ok"];
    [alrt addButtonWithTitle:@"Cancel"];
    return alrt;
}

#pragma mark -
#pragma mark CPPopover Methods

// popover code shamelessly borrowed from the CPPopover Manual Test

- (@action)openPopover:(id)aSender
{
    [self initPopover:thePopover withAppearance:CPPopoverAppearanceMinimal];

    var edge = nil;
    switch ([aSender title])
    {
        case @"Popover Below":
            edge = CPMaxYEdge;
            break;
        case @"Popover Above":
            edge = CPMinYEdge;
            break;
        case @"Popover Left":
        case @"Popover Upper Left":
        case @"Popover Lower Left":
            edge = CPMinXEdge;
            break;
        case @"Popover Right":
        case @"Popover Upper Right":
        case @"Popover Lower Right":
            edge = CPMaxXEdge;
            break;
        default:
            break;
    }

    if ([useHUDStyle objectValue])
        [popoverLabel setTextColor:[CPColor whiteColor]];
    else
        [popoverLabel setTextColor:[CPColor blackColor]];

    [thePopover showRelativeToRect:nil ofView:aSender preferredEdge:edge];
}

- (void)initPopover:(CPPopover)aPopover withAppearance:(int)appearance
{
    [aPopover setAnimates:[animatePopovers objectValue]];
    [aPopover setBehavior:CPPopoverBehaviorTransient];
    [aPopover setAppearance:([useHUDStyle objectValue] ? CPPopoverAppearanceHUD : CPPopoverAppearanceMinimal)];
}

#pragma mark -
#pragma mark CPOutlineView Delegate Methods

- (int)outlineView:(CPOutlineView)theOutlineView numberOfChildrenOfItem:(id)theItem
{
    if (theItem == nil)
        theItem = rootItem;

    if ([theItem isKindOfClass:[CPString class]])
        return 0;

    return [[theItem objectForKey:"Children"] count];
}

- (id)outlineView:(CPOutlineView)theOutlineView child:(int)theIndex ofItem:(id)theItem
{
    if (theItem == nil)
        theItem = rootItem;

    return [[theItem objectForKey:"Children"] objectAtIndex:theIndex];
}

- (BOOL)outlineView:(CPOutlineView)theOutlineView isItemExpandable:(id)theItem
{
    if (theItem == nil)
        theItem = rootItem;

    return ![theItem isKindOfClass:[CPString class]];
}

- (id)outlineView:(CPOutlineView)anOutlineView objectValueForTableColumn:(CPTableColumn)theColumn byItem:(id)theItem
{
    if ([theItem isKindOfClass:[CPString class]])
        return theItem;

    return [theItem objectForKey:"Name"];
}

@end



@implementation TableTwoDataSourceAndDelegate : CPObject
{
    CPArray     theData    @accessors;
}

- (id)init
{
    if (self = [super init])
    {
        console.log("inited");
    }
    return self;
}

#pragma mark -
#pragma mark Data Delegate Methods

- (int)numberOfRowsInTableView:(CPTableView)aTable
{
    return [theData count];
}

- (id)tableView:(CPTableView)aTable objectValueForTableColumn:(CPTableColumn)aCol row:(int)aRow
{
    return [theData[aRow] valueForKey:[aCol identifier]];
}

#pragma mark -
#pragma mark Table Delegate Methods

- (void)tableView:(CPTableView)aTableView setObjectValue:(id)aValue forTableColumn:(CPTableColumn)tableColumn row:(int)aRow
{
    theData[aRow] = aValue;
}

- (BOOL)tableView:(CPTableView)aTable isGroupRow:(int)aRow
{
    // console.log([theData[aRow] columnTwo] % 10 === 0);
    return [theData[aRow] columnTwo] % 10 === 0;
}

- (BOOL)tableView:(CPTableView)aTableView acceptDrop:(id)info row:(int)row dropOperation:(CPTableViewDropOperation)operation
{
    // pass
    console.log("TableView acceptDrop");
}

- (BOOL)tableView:(CPTableView)aTableView writeRowsWithIndexes:(CPIndexSet)rowIndexes toPasteboard:(CPPasteboard)pboard
{
    //pass
    console.log("TableView writeRowsWithIndexes");
}

- (void)tableView:(CPTableView)aTableView sortDescriptorsDidChange:(CPArray)oldDescriptors
{
    //pass
    console.log("Sort descriptors changed");
}

- (CPDragOperation)tableView:(CPTableView)aTableView
                   validateDrop:(id)info
                   proposedRow:(CPInteger)row
                   proposedDropOperation:(CPTableViewDropOperation)operation
{
    console.log("TableView validateDrop");
}

@end


@implementation ViewBasedTableDataSourceAndDelegate : CPObject
{
    @outlet     CPTableView         viewBasedTable;
                CPArrayController   viewBasedTableArrayController;
                CPArray             viewBasedTableArray;
}

- (id)init
{
    var self = [super init];

    if (self)
    {
        viewBasedTableArrayController = [[CPArrayController alloc] init];

        var path = [[CPBundle mainBundle] pathForResource:@"People.plist"],
            request = [CPURLRequest requestWithURL:path],
            connection = [CPURLConnection connectionWithRequest:request delegate:self];

        [viewBasedTable bind:@"contentArray"
                        toObject:viewBasedTableArrayController
                        withKey:@"arrangedObjects"
                        options:nil];

        [viewBasedTable bind:@"selectionIndexes"
                        toObject:viewBasedTableArrayController
                        withKey:@"selectionIndexes"
                        options:nil];

    }
}

- (void)tableView:(CPTableView)aTableView viewForTableColumn:(CPTableColumn)aTableColumn row:(int)aRow
{
    var aView = [aTableView makeViewWithIdentifier:[aTableColumn identifier] owner:self];
    return aView;
}

- (BOOL)tableView:(CPTableView)aTableView writeRowsWithIndexes:(CPIndexSet)rowIndexes toPasteboard:(CPPasteboard)pboard
{
}

- (CPDragOperation)tableView:(CPTableView)aTableView
                   validateDrop:(id)info
                   proposedRow:(CPInteger)row
                   proposedDropOperation:(CPTableViewDropOperation)operation
{
}

- (BOOL)tableView:(CPTableView)aTableView acceptDrop:(id)info row:(int)row dropOperation:(CPTableViewDropOperation)operation
{
}

- (int)tableView:(CPTableView)aTableView heightOfRow:(int)aRow
{
}

#pragma mark -
#pragma mark CPURLConnection Delegate

- (void)connection:(CPURLConnection)connection didReceiveData:(CPString)dataString
{
    if (!dataString)
        return;

    var data = [[CPData alloc] initWithRawString:dataString],
        deserialized = [CPPropertyListSerialization propertyListFromData:data format:CPPropertyListXMLFormat_v1_0],
        people = [deserialized objectForKey:@"Items"];

    [people enumerateObjectsUsingBlock:function(obj, idx, stop)
        {
            var person = [Person initializeWithDictionary:obj];
            [viewBasedTableArrayController addObject:person];
        }];

    console.log(viewBasedTableArrayController);
}

@end


@implementation MenuModificationObserver : CPObject
{
    CPString    menuPlatformControl     @accessors;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        menuPlatformControl = @"Switch to Regular Window";
    }

    return self;
}

- (void)didBecomeRegularWindow:(CPNotification)aNotification
{
    menuPlatformControl = @"Switch to Platform Window";
    console.log(menuPlatformControl);
}

- (void)didBecomePlatformWindow:(CPNotification)aNotification
{
    console.log("Hi2!");
    menuPlatformControl = @"Switch to Regular Window";
    console.log(menuPlatformControl);
}

@end
