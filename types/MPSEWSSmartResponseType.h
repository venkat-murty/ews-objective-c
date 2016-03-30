#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseBaseType.h"



@class MPSEWSBodyType;



/* SmartResponseType */
@interface MPSEWSSmartResponseType : MPSEWSSmartResponseBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSmartResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBodyType* pNewBodyContent;


@end

