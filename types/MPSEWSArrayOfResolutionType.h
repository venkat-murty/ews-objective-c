#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSResolutionType;



/* ArrayOfResolutionType */
@interface MPSEWSArrayOfResolutionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfResolutionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                              indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                              numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                              absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                              includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                              totalItemsInView         /* xs:int */;
@property (strong) NSMutableArray<MPSEWSResolutionType*>* resolution;


- (void) addResolution:(MPSEWSResolutionType*) elem;
@end

