#import <Foundation/Foundation.h>



@class MPSEWSBasePathToElementType;
@class MPSEWSConstantValueType;



/* FieldURIOrConstantType */
@interface MPSEWSFieldURIOrConstantType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFieldURIOrConstantType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;
@property (strong) MPSEWSConstantValueType*     constant;


@end

