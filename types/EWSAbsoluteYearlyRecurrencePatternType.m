#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAbsoluteYearlyRecurrencePatternType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSMonthNamesType.h"


@implementation EWSAbsoluteYearlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property      : @"dayOfMonth"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfMonth"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"month"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [EWSMonthNamesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAbsoluteYearlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AbsoluteYearlyRecurrencePatternType: DayOfMonth=%@ Month=%@ super=%@", _dayOfMonth, _month, [super description]];
}

@end

