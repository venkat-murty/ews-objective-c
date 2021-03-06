#import <Foundation/Foundation.h>


#import "MPSEWSHandler.h"

/**
 * Handles generic XML content and parses into NSData*
 */
@interface MPSEWSXmlContentTypeHandler :  MPSEWSHandler 

+ (void) initialize;
+ (BOOL) isValid:(NSData*) data forVersion:(MPSEWSExchangeVersion) ver;

- (id) initWithClass: (Class)cls;

- (id) constructWithAttributes: (NSDictionary *)attributes;

- (id) updateObject:(id)obj withCharacters:(NSString*)s;

- (id) updateObject:(id)obj startElement:(NSString*) elementName namespace:(NSString*) namespaceURI attributes:(NSDictionary*) attributeDict;

- (id) updateObject:(id)obj endElement:(NSString*) elementName namespace:(NSString*) namespaceURI;

- (id) updateObjectBeforeAssignment:(id) obj;

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withTag:(NSString*) tag;

- (BOOL) parse;

@end



