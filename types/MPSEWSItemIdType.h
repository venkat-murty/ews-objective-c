#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* ItemIdType */
@interface MPSEWSItemIdType : MPSEWSBaseItemIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSString* changeKey  /* xs:string */;


@end

