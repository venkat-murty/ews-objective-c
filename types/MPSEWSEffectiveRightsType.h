#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* EffectiveRightsType */
@interface MPSEWSEffectiveRightsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEffectiveRightsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* createAssociated  /* xs:boolean */;
@property (strong) NSNumber* createContents    /* xs:boolean */;
@property (strong) NSNumber* createHierarchy   /* xs:boolean */;
@property (strong) NSNumber* delete            /* xs:boolean */;
@property (strong) NSNumber* modify            /* xs:boolean */;
@property (strong) NSNumber* read              /* xs:boolean */;
@property (strong) NSNumber* viewPrivateItems  /* xs:boolean */;


@end

