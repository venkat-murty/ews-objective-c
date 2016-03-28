#import <Foundation/Foundation.h>



@class MPSEWSSidAndAttributesType;



/* NonEmptyArrayOfGroupIdentifiersType */
@interface MPSEWSNonEmptyArrayOfGroupIdentifiersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSidAndAttributesType*>* groupIdentifier;


- (void) addGroupIdentifier:(MPSEWSSidAndAttributesType*) elem;
@end

