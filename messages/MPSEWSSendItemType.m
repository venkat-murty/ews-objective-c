#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSendItemType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSSendItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSendItemType class]];

    [handler property    : @"saveItemToFolder"
             withAttrTag : @"SaveItemToFolder"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"savedItemFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSendItemType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSendItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendItemType: SaveItemToFolder=%@ ItemIds=%@ SavedItemFolderId=%@ super=%@", _saveItemToFolder, _itemIds, _savedItemFolderId, [super description]];
}

@end

