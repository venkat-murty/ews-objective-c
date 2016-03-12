#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: DeliverMeetingRequestsType can be one of the following:
 *       1 DelegatesOnly
 *       2 DelegatesAndMe
 *       3 DelegatesAndSendInformationToMe
 */
@interface EWSDeliverMeetingRequestsType : EWSSimpleTypeHandler 

/** Register a handler to parse DeliverMeetingRequestsType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) DelegatesOnly;
+ (NSString *) DelegatesAndMe;
+ (NSString *) DelegatesAndSendInformationToMe;
@end
