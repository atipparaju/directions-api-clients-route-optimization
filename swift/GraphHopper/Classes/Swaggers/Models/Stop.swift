//
// Stop.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Stop: JSONEncodable {

    public var address: Address?
    /** duration of stop, i.e. time in ms the corresponding activity takes */
    public var duration: Int?
    /** array of time windows. currently, only a single time window is allowed */
    public var time_windows: [TimeWindow]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["address"] = self.address?.encodeToJSON()
        nillableDictionary["duration"] = self.duration
        nillableDictionary["time_windows"] = self.time_windows?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
