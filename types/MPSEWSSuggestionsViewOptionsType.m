#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSuggestionsViewOptionsType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDuration.h"
#import "../types/MPSEWSSuggestionQuality.h"


@implementation MPSEWSSuggestionsViewOptionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSuggestionsViewOptionsType class]];

    [handler property      : @"goodThreshold"
             withNamespace : 't'
             withXmlTag    : @"GoodThreshold"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maximumResultsByDay"
             withNamespace : 't'
             withXmlTag    : @"MaximumResultsByDay"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maximumNonWorkHourResultsByDay"
             withNamespace : 't'
             withXmlTag    : @"MaximumNonWorkHourResultsByDay"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"meetingDurationInMinutes"
             withNamespace : 't'
             withXmlTag    : @"MeetingDurationInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"minimumSuggestionQuality"
             withNamespace : 't'
             withXmlTag    : @"MinimumSuggestionQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"detailedSuggestionsWindow"
             withNamespace : 't'
             withXmlTag    : @"DetailedSuggestionsWindow"
             withHandler   : [MPSEWSDuration class]];

    [handler property      : @"currentMeetingTime"
             withNamespace : 't'
             withXmlTag    : @"CurrentMeetingTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"globalObjectId"
             withNamespace : 't'
             withXmlTag    : @"GlobalObjectId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSuggestionsViewOptionsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val goodThreshold] && ![MPSEWSIntegerTypeHandler isValid:[val goodThreshold] forVersion:ver]) return FALSE;
    if ([val maximumResultsByDay] && ![MPSEWSIntegerTypeHandler isValid:[val maximumResultsByDay] forVersion:ver]) return FALSE;
    if ([val maximumNonWorkHourResultsByDay] && ![MPSEWSIntegerTypeHandler isValid:[val maximumNonWorkHourResultsByDay] forVersion:ver]) return FALSE;
    if ([val meetingDurationInMinutes] && ![MPSEWSIntegerTypeHandler isValid:[val meetingDurationInMinutes] forVersion:ver]) return FALSE;
    if ([val minimumSuggestionQuality] && ![MPSEWSSuggestionQuality isValid:[val minimumSuggestionQuality] forVersion:ver]) return FALSE;
    if ([val detailedSuggestionsWindow] && ![MPSEWSDuration isValid:[val detailedSuggestionsWindow] forVersion:ver]) return FALSE;
    if ([val currentMeetingTime] && ![MPSEWSDateTimeTypeHandler isValid:[val currentMeetingTime] forVersion:ver]) return FALSE;
    if ([val globalObjectId] && ![MPSEWSStringTypeHandler isValid:[val globalObjectId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSuggestionsViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionsViewOptionsType: GoodThreshold=%@ MaximumResultsByDay=%@ MaximumNonWorkHourResultsByDay=%@ MeetingDurationInMinutes=%@ MinimumSuggestionQuality=%@ DetailedSuggestionsWindow=%@ CurrentMeetingTime=%@ GlobalObjectId=%@", _goodThreshold, _maximumResultsByDay, _maximumNonWorkHourResultsByDay, _meetingDurationInMinutes, _minimumSuggestionQuality, _detailedSuggestionsWindow, _currentMeetingTime, _globalObjectId];
}

@end

