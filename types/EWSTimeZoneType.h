#import <Foundation/Foundation.h>






/* TimeZoneType */
@interface EWSTimeZoneType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* timeZoneName  /* xs:string */;
@property (strong) NSString* baseOffset    /* xs:duration */;


@end

