#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSCalendarPermissionType.h"


@implementation EWSCalendarPermissionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarPermissionType class]];

    [handler property   : @"userId"
             isRequired : TRUE
             withXmlTag : @"UserId"
             withHandler: [EWSUserIdType class]];

    [handler property   : @"canCreateItems"
             isRequired : FALSE
             withXmlTag : @"CanCreateItems"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"canCreateSubFolders"
             isRequired : FALSE
             withXmlTag : @"CanCreateSubFolders"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderOwner"
             isRequired : FALSE
             withXmlTag : @"IsFolderOwner"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderVisible"
             isRequired : FALSE
             withXmlTag : @"IsFolderVisible"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFolderContact"
             isRequired : FALSE
             withXmlTag : @"IsFolderContact"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"editItems"
             isRequired : FALSE
             withXmlTag : @"EditItems"
             withHandler: [EWSPermissionActionType class]];

    [handler property   : @"deleteItems"
             isRequired : FALSE
             withXmlTag : @"DeleteItems"
             withHandler: [EWSPermissionActionType class]];

    [handler property   : @"readItems"
             isRequired : FALSE
             withXmlTag : @"ReadItems"
             withHandler: [EWSCalendarPermissionReadAccessType class]];

    [handler property   : @"calendarPermissionLevel"
             isRequired : TRUE
             withXmlTag : @"CalendarPermissionLevel"
             withHandler: [EWSCalendarPermissionLevelType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarPermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarPermissionType: ReadItems=%@ CalendarPermissionLevel=%@ super=%@", _readItems, _calendarPermissionLevel, [super description]];
}

@end

