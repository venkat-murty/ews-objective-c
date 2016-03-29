#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* ArrayOfRecipientsType */
@interface MPSEWSArrayOfRecipientsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressType*>* mailbox;


- (void) addMailbox:(MPSEWSEmailAddressType*) elem;
@end
