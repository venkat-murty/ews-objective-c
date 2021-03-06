#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: OofState can be one of the following:
 *       1 Disabled
 *       2 Enabled
 *       3 Scheduled
 */
@interface MPSEWSOofState : MPSEWSSimpleTypeHandler 

/** Register a handler to parse OofState */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Disabled;
+ (NSString *) Enabled;
+ (NSString *) Scheduled;
@end

