/*-
 * WSDL stubs for:  http://strohel.no-ip.com:8000/webservices/chatroom/call/soap?WSDL
 *   Generated by:  mates
 *           Date:  Sun Oct 17 23:43:57 2010
 *        Emitter:  Objective-C
 */


#import <CoreServices/CoreServices.h>
#import <Foundation/Foundation.h>
#import "WSGeneratedObj.h"
#import "Message.h"

/*-
 *   Web Service:  ChatRoomService
 * Documentation:  
 *                 			
 *                 Jednoducha chatovaci sluzba. Od klientu se ceka, ze budou volat
 *                 checkMessage() kazdych par (2) sekund. Jako parametr se preda id
 *                 posledni zpravy,
 *                 kterou klient od serveru dostal nebo 0, pokud jeste zadnou
 *                 nedostal.
 *                 
 *                 checkMessage() bud vrati zpravu nebo Fault, coz znamena, ze v danou
 *                 chvili neni
 *                 dostupna zadna novejsi zprava. Na toto klient nemusi a nemel by
 *                 nijak reagovat.
 *                 Pokud checkMessage() vrati zpravu, tak klient muze a mel by znovu
 *                 zavolat
 *                 checkMessage() a tak pokacovat az do doby, kdy uz zadne nove zpravy
 *                 nebudou.
 *                 
 *                 Pokud chce klient poslat zpravu, zavola sendMessage(). Vrati se
 *                 true nebo false
 *                 podle toho, zda server zpravu prijme.
 *                 
 *                 Od klientu se ceka, ze i vlastni zpravy zobrazi az kdyz je zpet
 *                 ziskaji
 *                 pomoci checkMessage(), nikoliv jiz pri odeslani.
 *                 
 *                 		
 */

/*-
 * Web Service:  ChatRoomService
 */
@interface ChatRoomService : NSObject 

+ (Message *) checkMessage:(int) lastSeen;
+ (int) sendMessage:(NSString *)text author:(NSString *)author;

@end;


/* __WSStub__ */
/*-
 * End of WSDL document at
 * http://strohel.no-ip.com:8000/webservices/chatroom/call/soap?WSDL
 */
