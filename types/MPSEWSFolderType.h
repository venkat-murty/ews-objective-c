#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderType.h"



@class MPSEWSPermissionSetType;



/* FolderType */
@interface MPSEWSFolderType : MPSEWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPermissionSetType* permissionSet;
@property (strong) NSNumber*                unreadCount    /* xs:int */;


@end

