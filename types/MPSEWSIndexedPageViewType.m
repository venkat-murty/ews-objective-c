#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIndexedPageViewType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSIndexBasePointType.h"


@implementation MPSEWSIndexedPageViewType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIndexedPageViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"offset"
             isRequired  : TRUE
             withAttrTag : @"Offset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"basePoint"
             isRequired  : TRUE
             withAttrTag : @"BasePoint"
             withHandler : [MPSEWSIndexBasePointType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIndexedPageViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IndexedPageViewType: Offset=%@ BasePoint=%@ super=%@", _offset, _basePoint, [super description]];
}

@end
