#import <Foundation/Foundation.h>
#import "MPSEWSStringType.h"






/* MimeContentType */
@interface MPSEWSMimeContentType : MPSEWSStringType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMimeContentType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* characterSet  /* xs:string */;


@end

