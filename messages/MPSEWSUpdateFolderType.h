#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfFolderChangesType;



/* UpdateFolderType */
@interface MPSEWSUpdateFolderType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateFolderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfFolderChangesType* folderChanges;


@end

