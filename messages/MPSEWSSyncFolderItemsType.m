#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderItemsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSItemResponseShapeType.h"
#import "../types/MPSEWSMaxSyncChangesReturnedType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSSyncFolderItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderItemsType class]];

    [handler property      : @"itemShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"syncFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"syncState"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SyncState"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"ignore"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Ignore"
             withHandler   : [MPSEWSArrayOfBaseItemIdsType class]];

    [handler property      : @"maxChangesReturned"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MaxChangesReturned"
             withHandler   : [MPSEWSMaxSyncChangesReturnedType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsType: ItemShape=%@ SyncFolderId=%@ SyncState=%@ Ignore=%@ MaxChangesReturned=%@ super=%@", _itemShape, _syncFolderId, _syncState, _ignore, _maxChangesReturned, [super description]];
}

@end
