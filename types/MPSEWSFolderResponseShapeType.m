#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderResponseShapeType.h"
#import "../types/MPSEWSDefaultShapeNamesType.h"
#import "../types/MPSEWSNonEmptyArrayOfPathsToElementType.h"


@implementation MPSEWSFolderResponseShapeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderResponseShapeType class]];

    [handler property      : @"baseShape"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BaseShape"
             withHandler   : [MPSEWSDefaultShapeNamesType class]];

    [handler property      : @"additionalProperties"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdditionalProperties"
             withHandler   : [MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderResponseShapeType: BaseShape=%@ AdditionalProperties=%@", _baseShape, _additionalProperties];
}

@end
