#import <Foundation/Foundation.h>
#import "MPSEWSRecurrenceRangeBaseType.h"






/* EndDateRecurrenceRangeType */
@interface MPSEWSEndDateRecurrenceRangeType : MPSEWSRecurrenceRangeBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEndDateRecurrenceRangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* endDate  /* xs:date */;


@end

