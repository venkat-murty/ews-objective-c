#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* OccurrenceItemIdType */
@interface MPSEWSOccurrenceItemIdType : MPSEWSBaseItemIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOccurrenceItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* recurringMasterId  /* MPSEWSDerivedItemIdType */;
@property (strong) NSString* changeKey          /* xs:string */;
@property (strong) NSNumber* instanceIndex      /* xs:int */;


@end

