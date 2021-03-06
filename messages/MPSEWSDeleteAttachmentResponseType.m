#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteAttachmentResponseType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSDeleteAttachmentResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteAttachmentResponseType class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfResponseMessagesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteAttachmentResponseType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseResponseMessageType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteAttachmentResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteAttachmentResponseType: super=%@", [super description]];
}

@end

