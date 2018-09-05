// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: LocService.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Locservice_AudioBuffer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_Listeners {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var numberOfListeners: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_Listener {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var userID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_OnlinePing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var userID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_OnlineResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var wasRecieved: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_OfflinePing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var userID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Locservice_OfflineResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var wasRecieved: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "locservice"

extension Locservice_AudioBuffer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_AudioBuffer) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".AudioBuffer"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_AudioBuffer, rhs: Locservice_AudioBuffer) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_Listeners: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_Listeners) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".Listeners"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "numberOfListeners"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.numberOfListeners)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.numberOfListeners != 0 {
      try visitor.visitSingularInt64Field(value: self.numberOfListeners, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_Listeners, rhs: Locservice_Listeners) -> Bool {
    if lhs.numberOfListeners != rhs.numberOfListeners {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_Listener: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_Listener) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".Listener"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userID"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.userID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_Listener, rhs: Locservice_Listener) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_OnlinePing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_OnlinePing) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".OnlinePing"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userID"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.userID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_OnlinePing, rhs: Locservice_OnlinePing) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_OnlineResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_OnlineResponse) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".OnlineResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "wasRecieved"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.wasRecieved)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.wasRecieved != false {
      try visitor.visitSingularBoolField(value: self.wasRecieved, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_OnlineResponse, rhs: Locservice_OnlineResponse) -> Bool {
    if lhs.wasRecieved != rhs.wasRecieved {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_OfflinePing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_OfflinePing) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".OfflinePing"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userID"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.userID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_OfflinePing, rhs: Locservice_OfflinePing) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Locservice_OfflineResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Locservice_OfflineResponse) -> Bool {
        return self == other
    }
    
  static let protoMessageName: String = _protobuf_package + ".OfflineResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "wasRecieved"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.wasRecieved)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.wasRecieved != false {
      try visitor.visitSingularBoolField(value: self.wasRecieved, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Locservice_OfflineResponse, rhs: Locservice_OfflineResponse) -> Bool {
    if lhs.wasRecieved != rhs.wasRecieved {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
