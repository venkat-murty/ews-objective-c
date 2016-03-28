#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfRequestAttachmentIdsType;



/* DeleteAttachmentType */
@interface MPSEWSDeleteAttachmentType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

