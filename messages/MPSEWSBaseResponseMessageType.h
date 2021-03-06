#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfResponseMessagesType;



/* BaseResponseMessageType */
@interface MPSEWSBaseResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfResponseMessagesType* responseMessages;


@end

