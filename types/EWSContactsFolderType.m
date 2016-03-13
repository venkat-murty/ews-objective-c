#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSContactsFolderType.h"


@implementation EWSContactsFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSContactsFolderType class]];

    [handler property      : @"folderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"folderClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FolderClass"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"displayName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"totalCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TotalCount"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"childFolderCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ChildFolderCount"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [EWSExtendedPropertyType class]];

    [handler property      : @"managedFolderInformation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ManagedFolderInformation"
             withHandler   : [EWSManagedFolderInformationType class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [EWSEffectiveRightsType class]];

    [handler property      : @"permissionSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PermissionSet"
             withHandler   : [EWSPermissionSetType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSContactsFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContactsFolderType: PermissionSet=%@ super=%@", _permissionSet, [super description]];
}

@end
