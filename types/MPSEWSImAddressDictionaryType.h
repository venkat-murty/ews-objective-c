#import <Foundation/Foundation.h>



@class MPSEWSImAddressDictionaryEntryType;



/* ImAddressDictionaryType */
@interface MPSEWSImAddressDictionaryType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSImAddressDictionaryEntryType*>* entry;


- (void) addEntry:(MPSEWSImAddressDictionaryEntryType*) elem;
@end
