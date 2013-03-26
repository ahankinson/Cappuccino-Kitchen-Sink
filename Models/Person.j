

@implementation Person : CPObject
{
    CPImage     picture         @accessors;
    CPString    firstName       @accessors;
    CPString    lastName        @accessors;
    CPNumber    age             @accessors;
    CPString    occupation      @accessors;
}

- (id)init
{
    var self = [super init];
    if (self)
    {
        firstName = @"John";
        lastName = @"Smith";
        age = 24;
        occupation = @"Lawyer";
    }

    return self;
}

+ initializeWithDictionary:(CPDictionary)aDictionary
{
    var self = [[Person alloc] init];
    if (self)
    {
        [self setFirstName:[aDictionary valueForKey:@"firstName"]];
        [self setLastName:[aDictionary valueForKey:@"lastName"]];
        [self setAge:[aDictionary valueForKey:@"age"]];
        [self setOccupation:[aDictionary valueForKey:@"occupation"]];

        var picture = [aDictionary valueForKey:@"picture"];
        [self setPicture:[[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:[picture valueForKey:@"image"]] size:CGSizeMake(128, 128)]];
    }

    return self;
}

@end
