#import <Foundation/Foundation.h>



@class MPSEWSWorkingPeriod;



/* ArrayOfWorkingPeriod */
@interface MPSEWSArrayOfWorkingPeriod : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSWorkingPeriod*>* workingPeriod;


- (void) addWorkingPeriod:(MPSEWSWorkingPeriod*) elem;
@end

