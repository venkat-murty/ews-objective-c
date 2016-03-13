#import <Foundation/Foundation.h>




#import "../types/EWSAggregateOnType.h"
#import "EWSBaseGroupByType.h"



/* GroupByType */
@interface EWSGroupByType : EWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSAggregateOnType* aggregateOn;


@end

