#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderIdType.h"



@class MPSEWSEmailAddressType;



/* DistinguishedFolderIdType */
@interface MPSEWSDistinguishedFolderIdType : MPSEWSBaseFolderIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDistinguishedFolderIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*               id         /* MPSEWSDistinguishedFolderIdNameType */;
@property (strong) NSString*               changeKey  /* xs:string */;
@property (strong) MPSEWSEmailAddressType* mailbox;


@end

