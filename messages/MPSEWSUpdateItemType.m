#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateItemType.h"
#import "../types/MPSEWSCalendarItemUpdateOperationType.h"
#import "../types/MPSEWSConflictResolutionType.h"
#import "../types/MPSEWSMessageDispositionType.h"
#import "../types/MPSEWSNonEmptyArrayOfItemChangesType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSUpdateItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateItemType class]];

    [handler property    : @"conflictResolution"
             isRequired  : TRUE
             withAttrTag : @"ConflictResolution"
             withHandler : [MPSEWSConflictResolutionType class]];

    [handler property    : @"messageDisposition"
             isRequired  : FALSE
             withAttrTag : @"MessageDisposition"
             withHandler : [MPSEWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitationsOrCancellations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingInvitationsOrCancellations"
             withHandler : [MPSEWSCalendarItemUpdateOperationType class]];

    [handler property      : @"savedItemFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"itemChanges"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemChanges"
             withHandler   : [MPSEWSNonEmptyArrayOfItemChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateItemType: ConflictResolution=%@ MessageDisposition=%@ SendMeetingInvitationsOrCancellations=%@ SavedItemFolderId=%@ ItemChanges=%@ super=%@", _conflictResolution, _messageDisposition, _sendMeetingInvitationsOrCancellations, _savedItemFolderId, _itemChanges, [super description]];
}

@end
