#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFreeBusyViewOptionsType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSDuration.h"
#import "../types/EWSFreeBusyViewType.h"


@implementation EWSFreeBusyViewOptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFreeBusyViewOptionsType class]];

    [handler property      : @"timeWindow"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeWindow"
             withHandler   : [EWSDuration class]];

    [handler property      : @"mergedFreeBusyIntervalInMinutes"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusyIntervalInMinutes"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"requestedView"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RequestedView"
             withHandler   : [EWSFreeBusyViewType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFreeBusyViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyViewOptionsType: TimeWindow=%@ MergedFreeBusyIntervalInMinutes=%@ RequestedView=%@", _timeWindow, _mergedFreeBusyIntervalInMinutes, _requestedView];
}

@end

