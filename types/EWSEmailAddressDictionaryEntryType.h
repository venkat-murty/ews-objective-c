#import <Foundation/Foundation.h>




#import "../types/EWSEmailAddressKeyType.h"
#import "EWSStringType.h"



/* EmailAddressDictionaryEntryType */
@interface EWSEmailAddressDictionaryEntryType : EWSStringType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* key    /* EWSEmailAddressKeyType */;


@end
