#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSBaseFolderIdType.h"



/* FolderIdType */
@interface EWSFolderIdType : EWSBaseFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* id         /* xs:string */;
@property (retain) NSString* changeKey  /* xs:string */;


@end

