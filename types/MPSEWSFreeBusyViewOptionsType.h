#import <Foundation/Foundation.h>



@class MPSEWSDuration;



/* FreeBusyViewOptionsType */
@interface MPSEWSFreeBusyViewOptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSDuration*            timeWindow;
@property (strong) NSNumber*                  mergedFreeBusyIntervalInMinutes  /* xs:int */;
@property (strong) NSMutableArray<NSString*>* requestedView                    /* MPSEWSFreeBusyViewType */;


@end
