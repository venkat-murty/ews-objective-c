#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSubscribeResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSSubscribeResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSubscribeResponseType class]];

    [handler property      : @"responseMessages"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [EWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSubscribeResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SubscribeResponseType: super=%@", [super description]];
}

@end

