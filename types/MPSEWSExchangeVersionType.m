#import <Foundation/Foundation.h>

#import "MPSEWSExchangeVersionType.h"
@implementation MPSEWSExchangeVersionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSExchangeVersionType Exchange2007], 
                                         [MPSEWSExchangeVersionType Exchange2007_SP1], nil];
    [[[MPSEWSExchangeVersionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSExchangeVersionType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) Exchange2007 { return @"Exchange2007"; }
+ (NSString *) Exchange2007_SP1 { return @"Exchange2007_SP1"; }
@end
