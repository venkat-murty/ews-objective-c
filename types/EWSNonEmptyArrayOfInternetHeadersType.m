
#import "EWSNonEmptyArrayOfInternetHeadersType.h"


@implementation EWSNonEmptyArrayOfInternetHeadersType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfInternetHeadersType alloc] initWithClass:[EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler elementName   : @"InternetMessageHeader"
             withNamespace : 't'             withHandler   : [EWSInternetHeaderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end
