#import <Foundation/Foundation.h>



@class MPSEWSBasePathToElementType;



/* NonEmptyArrayOfPathsToElementType */
@interface MPSEWSNonEmptyArrayOfPathsToElementType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPathsToElementType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType* path;


@end

