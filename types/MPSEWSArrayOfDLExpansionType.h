#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* ArrayOfDLExpansionType */
@interface MPSEWSArrayOfDLExpansionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfDLExpansionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                                numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                                absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                                includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                                totalItemsInView         /* xs:int */;
@property (strong) NSMutableArray<MPSEWSEmailAddressType*>* mailbox;


- (void) addMailbox:(MPSEWSEmailAddressType*) elem;
@end

