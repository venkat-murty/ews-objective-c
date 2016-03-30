#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDistinguishedFolderIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDistinguishedFolderIdNameType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSDistinguishedFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDistinguishedFolderIdType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSDistinguishedFolderIdNameType class]];

    [handler property    : @"changeKey"
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDistinguishedFolderIdType*) val
{   (void) val;
    if (![MPSEWSBaseFolderIdType isValid:val]) return FALSE;
    if ([val id  ] && ![MPSEWSDistinguishedFolderIdNameType isValid:[val id  ]]) return FALSE;
    if ([val changeKey] && ![MPSEWSStringTypeHandler isValid:[val changeKey]]) return FALSE;
    if ([val mailbox] && ![MPSEWSEmailAddressType isValid:[val mailbox]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDistinguishedFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DistinguishedFolderIdType: Id=%@ ChangeKey=%@ Mailbox=%@ super=%@", _id, _changeKey, _mailbox, [super description]];
}

@end

