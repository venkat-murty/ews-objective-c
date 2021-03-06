#import <Foundation/Foundation.h>
#import "MPSEWSItemType.h"



@class MPSEWSNonEmptyArrayOfAllItemsType;
@class MPSEWSNonEmptyArrayOfAttendeesType;
@class MPSEWSNonEmptyArrayOfDeletedOccurrencesType;
@class MPSEWSNonEmptyArrayOfOccurrenceInfoType;
@class MPSEWSOccurrenceInfoType;
@class MPSEWSRecurrenceType;
@class MPSEWSSingleRecipientType;
@class MPSEWSTimeZoneDefinitionType;
@class MPSEWSTimeZoneType;



/* CalendarItemType */
@interface MPSEWSCalendarItemType : MPSEWSItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCalendarItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                    uID                        /* xs:string */;
@property (strong) NSString*                                    recurrenceId               /* xs:dateTime */;
@property (strong) NSString*                                    dateTimeStamp              /* xs:dateTime */;
@property (strong) NSString*                                    start                      /* xs:dateTime */;
@property (strong) NSString*                                    end                        /* xs:dateTime */;
@property (strong) NSString*                                    originalStart              /* xs:dateTime */;
@property (strong) NSNumber*                                    isAllDayEvent              /* xs:boolean */;
@property (strong) NSString*                                    legacyFreeBusyStatus       /* MPSEWSLegacyFreeBusyType */;
@property (strong) NSString*                                    location                   /* xs:string */;
@property (strong) NSString*                                    when                       /* xs:string */;
@property (strong) NSNumber*                                    isMeeting                  /* xs:boolean */;
@property (strong) NSNumber*                                    isCancelled                /* xs:boolean */;
@property (strong) NSNumber*                                    isRecurring                /* xs:boolean */;
@property (strong) NSNumber*                                    meetingRequestWasSent      /* xs:boolean */;
@property (strong) NSNumber*                                    isResponseRequested        /* xs:boolean */;
@property (strong) NSString*                                    calendarItemType           /* MPSEWSCalendarItemTypeType */;
@property (strong) NSString*                                    myResponseType             /* MPSEWSResponseTypeType */;
@property (strong) MPSEWSSingleRecipientType*                   organizer;
@property (strong) MPSEWSNonEmptyArrayOfAttendeesType*          requiredAttendees;
@property (strong) MPSEWSNonEmptyArrayOfAttendeesType*          optionalAttendees;
@property (strong) MPSEWSNonEmptyArrayOfAttendeesType*          resources;
@property (strong) NSNumber*                                    conflictingMeetingCount    /* xs:int */;
@property (strong) NSNumber*                                    adjacentMeetingCount       /* xs:int */;
@property (strong) MPSEWSNonEmptyArrayOfAllItemsType*           conflictingMeetings;
@property (strong) MPSEWSNonEmptyArrayOfAllItemsType*           adjacentMeetings;
@property (strong) NSString*                                    duration                   /* xs:string */;
@property (strong) NSString*                                    timeZone                   /* xs:string */;
@property (strong) NSString*                                    appointmentReplyTime       /* xs:dateTime */;
@property (strong) NSNumber*                                    appointmentSequenceNumber  /* xs:int */;
@property (strong) NSNumber*                                    appointmentState           /* xs:int */;
@property (strong) MPSEWSRecurrenceType*                        recurrence;
@property (strong) MPSEWSOccurrenceInfoType*                    firstOccurrence;
@property (strong) MPSEWSOccurrenceInfoType*                    lastOccurrence;
@property (strong) MPSEWSNonEmptyArrayOfOccurrenceInfoType*     modifiedOccurrences;
@property (strong) MPSEWSNonEmptyArrayOfDeletedOccurrencesType* deletedOccurrences;
@property (strong) MPSEWSTimeZoneType*                          meetingTimeZone;
@property (strong) MPSEWSTimeZoneDefinitionType*                startTimeZone;
@property (strong) MPSEWSTimeZoneDefinitionType*                endTimeZone;
@property (strong) NSNumber*                                    conferenceType             /* xs:int */;
@property (strong) NSNumber*                                    allowNewTimeProposal       /* xs:boolean */;
@property (strong) NSNumber*                                    isOnlineMeeting            /* xs:boolean */;
@property (strong) NSString*                                    meetingWorkspaceUrl        /* xs:string */;
@property (strong) NSString*                                    netShowUrl                 /* xs:string */;


@end

