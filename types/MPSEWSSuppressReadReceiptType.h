#import <Foundation/Foundation.h>
#import "MPSEWSReferenceItemResponseType.h"






/* SuppressReadReceiptType */
@interface MPSEWSSuppressReadReceiptType : MPSEWSReferenceItemResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSuppressReadReceiptType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

