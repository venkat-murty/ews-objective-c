#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhoneNumberDictionaryEntryType.h"
#import "../types/MPSEWSPhoneNumberKeyType.h"


@implementation MPSEWSPhoneNumberDictionaryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhoneNumberDictionaryEntryType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [MPSEWSPhoneNumberKeyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhoneNumberDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneNumberDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end
