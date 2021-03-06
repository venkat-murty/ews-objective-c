#import <Foundation/Foundation.h>
#import "MPSEWSAttachmentType.h"






/* FileAttachmentType */
@interface MPSEWSFileAttachmentType : MPSEWSAttachmentType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFileAttachmentType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* isContactPhoto  /* xs:boolean */;
@property (strong) NSData*   content         /* xs:base64Binary */;


@end

