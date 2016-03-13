#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"
#import "EWSSearchExpressionType.h"



/* ExistsType */
@interface EWSExistsType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBasePathToElementType* path;


@end
