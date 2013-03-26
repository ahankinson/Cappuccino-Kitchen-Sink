@implementation TableObject : CPObject
{
    CPImage     columnOne       @accessors;
    CPNumber    columnTwo       @accessors;
    CPString    columnThree     @accessors;
    CPString    columnFour      @accessors;
}

- (id)init
{
    if (self = [super init])
    {
        columnOne = nil;
        columnTwo = 2;
        columnThree = @"Column Three";
        columnFour = @"Column Four";
    }
    return self;
}

@end
