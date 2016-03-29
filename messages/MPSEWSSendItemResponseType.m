#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSendItemResponseType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSSendItemResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSendItemResponseType class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSendItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendItemResponseType: super=%@", [super description]];
}

@end

