/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_extension.proto
 *
 */

//  Protos/unittest_swift_extension.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Test handling of extensions to deeply nested messages.
// /
//  -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf


struct ProtobufUnittest_Extend_Foo: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo"}
  public var protoMessageName: String {return "Foo"}
  public var protoPackageName: String {return "protobuf_unittest.extend"}
  public static let _protobuf_fieldNames = FieldNameMap()

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct Bar: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo.Bar"}
    public var protoMessageName: String {return "Bar"}
    public var protoPackageName: String {return "protobuf_unittest.extend"}
    public static let _protobuf_fieldNames = FieldNameMap()

    public var unknown = SwiftProtobuf.UnknownStorage()

    struct Baz: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
      public var swiftClassName: String {return "ProtobufUnittest_Extend_Foo.Bar.Baz"}
      public var protoMessageName: String {return "Baz"}
      public var protoPackageName: String {return "protobuf_unittest.extend"}
      public static let _protobuf_fieldNames: FieldNameMap = [
        1: .same(proto: "a", swift: "a"),
      ]

      public var unknown = SwiftProtobuf.UnknownStorage()

      private var _a: Int32? = nil
      var a: Int32 {
        get {return _a ?? 0}
        set {_a = newValue}
      }
      public var hasA: Bool {
        return _a != nil
      }
      public mutating func clearA() {
        return _a = nil
      }

      init() {}

      public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
        switch protoFieldNumber {
        case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_a)
        default: if (100 <= protoFieldNumber && protoFieldNumber < 1001) {
            try setter.decodeExtensionField(values: &extensionFieldValues, messageType: Baz.self, protoFieldNumber: protoFieldNumber)
          }
        }
      }

      public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
        if let v = _a {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, protoFieldNumber: 1)
        }
        try extensionFieldValues.traverse(visitor: &visitor, start: 100, end: 1001)
        unknown.traverse(visitor: &visitor)
      }

      public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar.Baz) -> Bool {
        if (a != other.a) {return false}
        if unknown != other.unknown {return false}
        if extensionFieldValues != other.extensionFieldValues {return false}
        return true
      }

      private var extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

      public mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>, value: F.ValueType) {
        extensionFieldValues[ext.protoFieldNumber] = ext.set(value: value)
      }

      public mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) {
        extensionFieldValues[ext.protoFieldNumber] = nil
      }

      public func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> F.ValueType {
        if let fieldValue = extensionFieldValues[ext.protoFieldNumber] as? F {
          return fieldValue.value
        }
        return ext.defaultValue
      }

      public func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> Bool {
        return extensionFieldValues[ext.protoFieldNumber] is F
      }
      public func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
        return Baz._protobuf_fieldNames.fieldNames(for: number) ?? extensionFieldValues.fieldNames(for: number)
      }
    }

    init() {}

    public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    }

    public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
      unknown.traverse(visitor: &visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}

struct ProtobufUnittest_Extend_C: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_Extend_C"}
  public var protoMessageName: String {return "C"}
  public var protoPackageName: String {return "protobuf_unittest.extend"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    999: .same(proto: "c", swift: "c"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  ///        extensions 10 to 20;
  private var _c: Int64? = nil
  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  public var hasC: Bool {
    return _c != nil
  }
  public mutating func clearC() {
    return _c = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 999: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &_c)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    if let v = _c {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, protoFieldNumber: 999)
    }
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_C) -> Bool {
    if (c != other.c) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

let ProtobufUnittest_Extend_Extensions_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 100, fieldNames: .same(proto: "b", swift: "ProtobufUnittest_Extend_b"), defaultValue: "")

let ProtobufUnittest_Extend_Extensions_c = SwiftProtobuf.MessageExtension<OptionalGroupExtensionField<ProtobufUnittest_Extend_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 101, fieldNames: .same(proto: "c", swift: "ProtobufUnittest_Extend_c"), defaultValue: ProtobufUnittest_Extend_C())

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b) ?? ""}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b, value: newValue)}
  }
  var hasProtobufUnittest_Extend_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
  mutating func clearProtobufUnittest_Extend_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_c: ProtobufUnittest_Extend_C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c) ?? ProtobufUnittest_Extend_C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c, value: newValue)}
  }
  var hasProtobufUnittest_Extend_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c)
  }
  mutating func clearProtobufUnittest_Extend_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c)
  }
}

let ProtobufUnittest_Extend_UnittestSwiftExtension_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_Extend_Extensions_b,
  ProtobufUnittest_Extend_Extensions_c
]
