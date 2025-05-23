//
//  NearestStationsService.swift
//  Travel-Schedule
//
//  Created by 1111 on 23.04.2025.
//

import Foundation
import OpenAPIRuntime
import OpenAPIURLSession
import SwiftUI


typealias NearestStations = Components.Schemas.Stations
typealias StationsSchedule = Components.Schemas.StationsSchedule
typealias OnStationsSchedule = Components.Schemas.OnStationsSchedule
typealias RouteStations = Components.Schemas.RouteStations
typealias NearestCity = Components.Schemas.NearestCity
typealias CarrierInfo = Components.Schemas.CarrierInfo
typealias StationsList = Components.Schemas.StationsList
typealias Copyright = Components.Schemas.Copyright

protocol TravelScheduleServiceProtocol {
    func getNearestStations(lat: Double, lng: Double, distance: Int) async throws -> NearestStations
    func getBetweenStationsSchedule(from: String, to: String) async throws -> StationsSchedule
    func getOnStationsSchedule(station: String) async throws -> OnStationsSchedule
    func getRouteStations(uid: String) async throws -> RouteStations
    func getNearestCity(lat: Double, lng: Double) async throws -> NearestCity
    func getCarrierInfo(code: String) async throws -> CarrierInfo
    func getStationsList() async throws -> StationsList
    func getCopyright(format: String) async throws -> Copyright
}

final class TravelScheduleService: TravelScheduleServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getNearestStations(lat: Double, lng: Double, distance: Int) async throws -> NearestStations {
        let response = try await client.getNearestStations(query: .init(
            apikey: apikey,
            lat: lat,
            lng: lng,
            distance: distance
        ))
        return try response.ok.body.json
    }
    
    func getBetweenStationsSchedule(from: String, to: String) async throws -> StationsSchedule {
        let response = try await client.getBetweenStationsSchedule(query: .init(
            apikey: apikey,
            from: from,
            to: to
        ))
        return try response.ok.body.json
    }
    
    func getOnStationsSchedule(station: String) async throws -> OnStationsSchedule {
        let response = try await client.getOnStationsSchedule(query: .init(
            apikey: apikey,
            station: station
        ))
        return try response.ok.body.json
    }
    
    func getRouteStations(uid: String) async throws -> RouteStations {
        let response = try await client.getRouteStations(query: .init(
            apikey: apikey,
            uid: uid
        ))
        return try response.ok.body.json
    }
    
    func getNearestCity(lat: Double, lng: Double) async throws -> NearestCity {
        let response = try await client.getNearestCity(query: .init(
            apikey: apikey,
            lat: lat,
            lng: lng
        ))
        return try response.ok.body.json
    }
    
    func getCarrierInfo(code: String) async throws -> CarrierInfo {
        let response = try await client.getCarrierInfo(query: .init(
            apikey: apikey,
            code: code
        ))
        return try response.ok.body.json
    }
    
    func getStationsList() async throws -> StationsList {
        let response = try await client.getStationsList(query: .init(
            apikey: apikey
        ))
        return try response.ok.body.json
    }
    
    func getCopyright(format: String) async throws -> Copyright {
        let response = try await client.getCopyright(query: .init(
            apikey: apikey,
            format: format
        ))
        return try response.ok.body.json
    }
}
