#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteItemType.h"
#import "../types/MPSEWSAffectedTaskOccurrencesType.h"
#import "../types/MPSEWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/MPSEWSDisposalType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"


@implementation MPSEWSDeleteItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteItemType class]];

    [handler property    : @"deleteType"
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

    [handler property    : @"sendMeetingCancellations"
             withAttrTag : @"SendMeetingCancellations"
             withHandler : [MPSEWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property    : @"affectedTaskOccurrences"
             withAttrTag : @"AffectedTaskOccurrences"
             withHandler : [MPSEWSAffectedTaskOccurrencesType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemType: DeleteType=%@ SendMeetingCancellations=%@ AffectedTaskOccurrences=%@ ItemIds=%@ super=%@", _deleteType, _sendMeetingCancellations, _affectedTaskOccurrences, _itemIds, [super description]];
}

@end

