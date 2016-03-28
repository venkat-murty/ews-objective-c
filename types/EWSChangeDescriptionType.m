#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSChangeDescriptionType.h"
#import "../types/EWSBasePathToElementType.h"


@implementation EWSChangeDescriptionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSChangeDescriptionType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ChangeDescriptionType: Path=%@", _path];
}

@end

