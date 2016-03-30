#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDistinguishedUserType.h"


@implementation MPSEWSUserIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserIdType class]];

    [handler property      : @"sID"
             withNamespace : 't'
             withXmlTag    : @"SID"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"primarySmtpAddress"
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"distinguishedUser"
             withNamespace : 't'
             withXmlTag    : @"DistinguishedUser"
             withHandler   : [MPSEWSDistinguishedUserType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserIdType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserIdType: SID=%@ PrimarySmtpAddress=%@ DisplayName=%@ DistinguishedUser=%@", _sID, _primarySmtpAddress, _displayName, _distinguishedUser];
}

@end

