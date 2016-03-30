#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSerializableTimeZoneTime.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSShortTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDayOfWeekType.h"


@implementation MPSEWSSerializableTimeZoneTime 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSerializableTimeZoneTime class]];

    [handler property      : @"bias"
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"time"
             withNamespace : 't'
             withXmlTag    : @"Time"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"dayOrder"
             withNamespace : 't'
             withXmlTag    : @"DayOrder"
             withHandler   : [MPSEWSShortTypeHandler class]];

    [handler property      : @"month"
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSShortTypeHandler class]];

    [handler property      : @"dayOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DayOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"year"
             withNamespace : 't'
             withXmlTag    : @"Year"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSerializableTimeZoneTime*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSerializableTimeZoneTime class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializableTimeZoneTime: Bias=%@ Time=%@ DayOrder=%@ Month=%@ DayOfWeek=%@ Year=%@", _bias, _time, _dayOrder, _month, _dayOfWeek, _year];
}

@end

