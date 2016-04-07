#import <Foundation/Foundation.h>
#import "MPSEWSMeetingMessageType.h"






/* MeetingCancellationMessageType */
@interface MPSEWSMeetingCancellationMessageType : MPSEWSMeetingMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMeetingCancellationMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

