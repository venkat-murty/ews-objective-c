#import <Foundation/Foundation.h>




#import "../types/EWSSearchExpressionType.h"
#import "EWSSearchExpressionType.h"



/* MultipleOperandBooleanExpressionType */
@interface EWSMultipleOperandBooleanExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSearchExpressionType* searchExpression;


@end
