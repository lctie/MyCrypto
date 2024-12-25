//
//  MarketDataService.swift
//  MyCrypto
//
//  Created by James Allen on 25/12/2024.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else {
            return
        }
        
        marketDataSubscription = NetworkingManager.download(url: url, auth: true)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGloablData) in
                self?.marketData = returnedGloablData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
