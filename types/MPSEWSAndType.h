#import <Foundation/Foundation.h>
#import "MPSEWSMultipleOperandBooleanExpressionType.h"






/* AndType */
@interface MPSEWSAndType : MPSEWSMultipleOperandBooleanExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAndType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

