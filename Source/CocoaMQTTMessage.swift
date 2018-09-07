//
//  CocoaMQTTMessage.swift
//  CocoaMQTT
//
//  Created by Feng Lee<feng@eqmtt.io> on 14/8/3.
//  Copyright (c) 2015 emqtt.io. All rights reserved.
//

import Foundation


/**
 * MQTT Message
 */
@objc open class CocoaMQTTMessage: NSObject {
    @objc open var qos = CocoaMQTTQOS.qos1
    @objc var dup = false

    @objc open var topic: String
    @objc open var payload: [UInt8]
    @objc open var retained = false
    
    // utf8 bytes array to string
    @objc public var string: String? {
        get {
            return NSString(bytes: payload, length: payload.count, encoding: String.Encoding.utf8.rawValue) as String?
        }
    }
    
    @objc public init(topic: String, string: String, qos: CocoaMQTTQOS = .qos1, retained: Bool = false, dup: Bool = false) {
        self.topic = topic
        self.payload = [UInt8](string.utf8)
        self.qos = qos
        self.retained = retained
        self.dup = dup
    }

    @objc public init(topic: String, payload: [UInt8], qos: CocoaMQTTQOS = .qos1, retained: Bool = false, dup: Bool = false) {
        self.topic = topic
        self.payload = payload
        self.qos = qos
        self.retained = retained
        self.dup = dup
    }
}

/**
 * MQTT Will Message
 */
@objc open class CocoaMQTTWill: CocoaMQTTMessage {
    @objc public init(topic: String, message: String) {
        super.init(topic: topic, payload: message.bytesWithLength)
    }
}
