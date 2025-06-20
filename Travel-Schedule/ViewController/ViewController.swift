//
//  ViewController.swift
//  Travel-Schedule
//
//  Created by 1111 on 28.04.2025.
//

import UIKit
import OpenAPIURLSession
import SwiftUI

final class ViewController: UIViewController {
    private let client: Client? = {
        do {
            let client = try Client(
                serverURL: Servers.Server1.url(),
                transport: URLSessionTransport()
            )
            return client
        } catch {
            print("Error")
            return nil
        }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller = UIHostingController(rootView: TabScreenView())
        self.addChild(controller)
        self.view.addSubview(controller.view)
        controller.didMove(toParent: self)
        controller.view.frame = view.frame
        //        getNearestStations()
        //        getBetweenStationsSchedule()
        //        getOnStationsSchedule()
        //        getRouteStations()
        //        getNearestCity()
        //        getCarrierInfo()
        //        getStationsList()
        //        getCopyright()
    }
    
    func getNearestStations() {
        guard let client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let stations = try await service.getNearestStations(lat: 59.864177, lng: 30.319163, distance: 50)
            print(stations)
        }
    }
    
    func getBetweenStationsSchedule() {
        guard let client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let betweenStationsSchedule = try await service.getBetweenStationsSchedule(from: "s9600213", to: "c146")
            print(betweenStationsSchedule)
        }
    }
    
    func getOnStationsSchedule() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let onStationsSchedule = try await service.getOnStationsSchedule(station: "s9600213")
            print(onStationsSchedule)
        }
    }
    
    func getRouteStations() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let routeStations = try await service.getRouteStations(uid: "")
            print(routeStations)
        }
    }
    
    func getNearestCity() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let nearestCity = try await service.getNearestCity(lat: 59.864177, lng: 30.319163)
            print(nearestCity)
        }
    }
    
    func getCarrierInfo() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let carrierInfo = try await service.getCarrierInfo(code: "s9600213")
            print(carrierInfo)
        }
    }
    
    func getStationsList() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let stationsList = try await service.getStationsList()
            print(stationsList)
        }
    }
    
    func getCopyright() {
        guard let client = client else { return }
        let service = TravelScheduleService(
            client: client,
            apikey: "****"
        )
        
        Task {
            let copyright = try await service.getCopyright(format: "json")
            print(copyright)
        }
    }
}
