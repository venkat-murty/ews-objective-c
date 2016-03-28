#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSConnectingSIDType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSConnectingSIDType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSConnectingSIDType class]];

    [handler property      : @"principalName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PrincipalName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"sID"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"SID"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"primarySmtpAddress"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSConnectingSIDType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConnectingSIDType: PrincipalName=%@ SID=%@ PrimarySmtpAddress=%@", _principalName, _sID, _primarySmtpAddress];
}

@end

