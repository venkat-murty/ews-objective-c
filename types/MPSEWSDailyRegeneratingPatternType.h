#import <Foundation/Foundation.h>
#import "MPSEWSRegeneratingPatternBaseType.h"






/* DailyRegeneratingPatternType */
@interface MPSEWSDailyRegeneratingPatternType : MPSEWSRegeneratingPatternBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDailyRegeneratingPatternType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

