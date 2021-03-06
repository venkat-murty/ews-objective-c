#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeChangeType.h"
#import "../handlers/MPSEWSDateTypeHandler.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSTimeTypeHandler.h"
#import "../types/MPSEWSRelativeYearlyRecurrencePatternType.h"


@implementation MPSEWSTimeChangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeChangeType class]];

    [handler property    : @"timeZoneName"
             withAttrTag : @"TimeZoneName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"offset"
             withNamespace : 't'
             withXmlTag    : @"Offset"
             withHandler   : [MPSEWSDurationTypeHandler class]];

    [handler property      : @"relativeYearlyRecurrence"
             withNamespace : 't'
             withXmlTag    : @"RelativeYearlyRecurrence"
             withHandler   : [MPSEWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"absoluteDate"
             withNamespace : 't'
             withXmlTag    : @"AbsoluteDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler property      : @"time"
             withNamespace : 't'
             withXmlTag    : @"Time"
             withHandler   : [MPSEWSTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTimeChangeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val timeZoneName] && ![MPSEWSStringTypeHandler isValid:[val timeZoneName] forVersion: ver]) return FALSE;
    if ([val offset] && ![MPSEWSDurationTypeHandler isValid:[val offset] forVersion:ver]) return FALSE;
    if ([val relativeYearlyRecurrence] && ![MPSEWSRelativeYearlyRecurrencePatternType isValid:[val relativeYearlyRecurrence] forVersion:ver]) return FALSE;
    if ([val absoluteDate] && ![MPSEWSDateTypeHandler isValid:[val absoluteDate] forVersion:ver]) return FALSE;
    if ([val time] && ![MPSEWSTimeTypeHandler isValid:[val time] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeChangeType: TimeZoneName=%@ Offset=%@ RelativeYearlyRecurrence=%@ AbsoluteDate=%@ Time=%@", _timeZoneName, _offset, _relativeYearlyRecurrence, _absoluteDate, _time];
}

@end

