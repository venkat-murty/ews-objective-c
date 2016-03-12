
#import "EWSPhysicalAddressDictionaryType.h"


@implementation EWSPhysicalAddressDictionaryType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSPhysicalAddressDictionaryType alloc] initWithClass:[EWSPhysicalAddressDictionaryType class]];

    [handler elementName : @"Entry"
             withHandler : [EWSPhysicalAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

