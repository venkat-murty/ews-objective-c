#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSAlternateIdBaseType;



/* ConvertIdResponseMessageType */
@interface MPSEWSConvertIdResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAlternateIdBaseType* alternateId;


@end

