#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: SearchFolderTraversalType can be one of the following:
 *       1 Shallow
 *       2 Deep
 */
@interface EWSSearchFolderTraversalType : EWSSimpleTypeHandler 

/** Register a handler to parse SearchFolderTraversalType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) Shallow;
+ (NSString *) Deep;
@end
