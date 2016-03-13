#import <Foundation/Foundation.h>




#import "../types/EWSSearchParametersType.h"
#import "EWSFolderType.h"



/* SearchFolderType */
@interface EWSSearchFolderType : EWSFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSearchParametersType* searchParameters;


@end
