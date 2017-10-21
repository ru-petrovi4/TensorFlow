// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/versions.proto
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

/// Version information for a piece of serialized data
///
/// There are different types of versions for each type of data
/// (GraphDef, etc.), but they all have the same common shape
/// described here.
///
/// Each consumer has "consumer" and "min_producer" versions (specified
/// elsewhere).  A consumer is allowed to consume this data if
///
///   producer >= min_producer
///   consumer >= min_consumer
///   consumer not in bad_consumers
public struct Tensorflow_VersionDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".VersionDef"

  /// The version of the code that produced this data.
  public var producer: Int32 = 0

  /// Any consumer below this version is not allowed to consume this data.
  public var minConsumer: Int32 = 0

  /// Specific consumer versions which are disallowed (e.g. due to bugs).
  public var badConsumers: [Int32] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.producer)
      case 2: try decoder.decodeSingularInt32Field(value: &self.minConsumer)
      case 3: try decoder.decodeRepeatedInt32Field(value: &self.badConsumers)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.producer != 0 {
      try visitor.visitSingularInt32Field(value: self.producer, fieldNumber: 1)
    }
    if self.minConsumer != 0 {
      try visitor.visitSingularInt32Field(value: self.minConsumer, fieldNumber: 2)
    }
    if !self.badConsumers.isEmpty {
      try visitor.visitPackedInt32Field(value: self.badConsumers, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_VersionDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "producer"),
    2: .standard(proto: "min_consumer"),
    3: .standard(proto: "bad_consumers"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_VersionDef) -> Bool {
    if self.producer != other.producer {return false}
    if self.minConsumer != other.minConsumer {return false}
    if self.badConsumers != other.badConsumers {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
