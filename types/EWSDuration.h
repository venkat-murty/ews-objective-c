#import <Foundation/Foundation.h>






/* Duration */
@interface EWSDuration : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startTime  /* xs:dateTime */;
@property (strong) NSString* endTime    /* xs:dateTime */;


@end

