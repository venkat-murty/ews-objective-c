#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeletedOccurrenceInfoType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"


@implementation MPSEWSDeletedOccurrenceInfoType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeletedOccurrenceInfoType class]];

    [handler property      : @"start"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeletedOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeletedOccurrenceInfoType: Start=%@", _start];
}

@end

