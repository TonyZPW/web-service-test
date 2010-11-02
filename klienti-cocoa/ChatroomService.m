/*-
 * WSDL stubs for:  http://strohel.no-ip.com:8000/webservices/chatroom/call/soap?WSDL
 *   Generated by:  mates
 *           Date:  Sun Oct 17 23:43:57 2010
 *        Emitter:  Objective-C
 */

#import "ChatroomService.h"

NSString * const ServerAddress = @"http://localhost:8000/webservices/chatroom/call/soap";

@implementation ChatRoomService

+ (Message *) checkMessage:(int) lastSeen {
	id paramValues[] = {    
        [[NSNumber numberWithInt:lastSeen] stringValue],        
    };    
    NSString* paramNames[] = {    
        @"lastSeenId",        
    };
	WSGeneratedObj *invocation = [[WSGeneratedObj alloc] init];
	[invocation setRef:[invocation createInvocationRef: ServerAddress
											methodName: @"checkMessage"
											  protocol: (NSString *) kWSSOAP1999Protocol
												 style: (NSString*) kWSSOAPStyleRPC
											soapAction: ServerAddress
									   methodNamespace: NULL]];
	[invocation setParameters:1 values: paramValues names: paramNames];
	NSDictionary *dict = [invocation getResultDictionary];
	dict = (NSDictionary *)[dict objectForKey:@"Message"];
	if (dict == nil) {
		return nil;
	}
	Message *message = [[Message alloc] init];
	message.author = (NSString *)[dict objectForKey:@"author"];
	message.text = (NSString *)[dict objectForKey:@"text"];
	message.Id = [(NSString *)[dict objectForKey:@"id"] intValue];
	return message;
}


+ (int) sendMessage:(NSString *)text author:(NSString *)author {
	id paramValues[] = {    
        text, author        
    };    
    NSString* paramNames[] = {    
        @"text", @"author"        
    };
	WSGeneratedObj *invocation = [[WSGeneratedObj alloc] init];
	[invocation setRef:[invocation createInvocationRef: ServerAddress
											methodName: @"sendMessage"
											  protocol: (NSString *) kWSSOAP1999Protocol
												 style: (NSString*) kWSSOAPStyleRPC
											soapAction: ServerAddress
									   methodNamespace: NULL]];
    [invocation setParameters:2 values: paramValues names: paramNames];    
	NSDictionary *dict = [invocation getResultDictionary];
	dict = (NSDictionary *)[dict objectForKey:@"Message"];
	if (dict == nil) {
		return 0;
	}
	return [(NSString *)[dict objectForKey:@"messageId"] intValue];
}


@end;