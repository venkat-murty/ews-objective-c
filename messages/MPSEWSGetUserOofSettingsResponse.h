#import <Foundation/Foundation.h>



@class MPSEWSResponseMessageType;
@class MPSEWSUserOofSettings;



/* GetUserOofSettingsResponse */
@interface MPSEWSGetUserOofSettingsResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;
@property (strong) MPSEWSUserOofSettings*     oofSettings;
@property (strong) NSString*                  allowExternalOof  /* MPSEWSExternalAudience */;


@end
