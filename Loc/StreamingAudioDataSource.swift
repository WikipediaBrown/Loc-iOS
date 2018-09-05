import Foundation
import SwiftGRPC

class StreamingAudioDataSource {
//    var pokemons = [Pokebot_Pokemon]()
//
    var address: String
    var userId: String
    var broadcastCall: Locservice_LocBroadcastCall?
    var listeningCall: Locservice_LocListenCall?
    var listening = true
//
//    var client: Pokebot_PokeBotServiceClient!
//    var event: Pokebot_PokeBotsearchPokemonCall!
//    var searching = false
    
    init() {
        address = Bundle.main.object(forInfoDictionaryKey: "GRPC_Address") as! String
        userId = "new poop"
        gRPC.initialize()
        goOnline()
    }
    
    func goOnline() {
        let client = Locservice_LocServiceClient(address: address, secure: false)
        var onlinePing = Locservice_OnlinePing()
        onlinePing.userID = userId
        let onlineResponse = try? client.userOnline(onlinePing)
        listening = false
//        print(onlineResponse)
//        print(onlineResponse?.wasRecieved)
    }
    
    func goOffline() {
        let client = Locservice_LocServiceClient(address: address, secure: false)
        var offlinePing = Locservice_OfflinePing()
        offlinePing.userID = userId
        let offlineResponse = try? client.userOffline(offlinePing)
        let ending = try? broadcastCall?.closeAndReceive(completion: { (result) in
            print(result.error)
            print(result.result)
        })
//        print(offlineResponse)
//        print(offlineResponse?.wasRecieved)
    }
    
    func streamAudio(buffer: String) {
        let client = Locservice_LocServiceClient(address: address, secure: false)
        
        broadcastCall = try? client.broadcast(completion: { (result) in
            print(result.description)
        })
        
        var aubioBuffer = Locservice_AudioBuffer()
        aubioBuffer.name = buffer
        
        let this = try? broadcastCall?.send(aubioBuffer)
        
    }
    
    func listenToAudio() {
        let client = Locservice_LocServiceClient(address: address, secure: false)
        var listener = Locservice_Listener()
        listener.userID = userId
        
        listeningCall = try? client.listen(listener, completion: { (result) in
            print(result.success)
        })
        listening = true
        while listening == true {
            let audio = try? listeningCall?.receive()
            print(audio)
        }
        
        
        
        
    }
    
    
    
//    func searchNewPokemon(searchText: String, completition: @escaping () -> Void) {
//        do {
//            searching = true
//            var input = Pokebot_PokeInput()
//            input.name = searchText
//
//            self.client = Pokebot_PokeBotServiceClient(address: address, secure: false)
//            self.event = try self.client.searchPokemon(input, completion: { (result) in
//                self.searching = false
//            })
//
//            DispatchQueue.global().async {
//                do {
//                    while (self.searching) {
//                        if let newPokemon = try self.event.receive() {
//                            self.pokemons.append(newPokemon)
//                            DispatchQueue.main.async {
//                                completition()
//                            }
//                        }
//                    }
//                }
//                catch {
//                }
//            }
//        } catch {
//        }
//    }
}
