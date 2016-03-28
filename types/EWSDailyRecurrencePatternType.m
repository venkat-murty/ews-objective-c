#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDailyRecurrencePatternType.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSDailyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDailyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDailyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DailyRecurrencePatternType: super=%@", [super description]];
}

@end

