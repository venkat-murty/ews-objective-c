#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* TransitionTargetType */
@interface MPSEWSTransitionTargetType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTransitionTargetType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* kind   /* MPSEWSTransitionTargetKindType */;


@end

