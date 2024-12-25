//
//  CoinModel.swift
//  MyCrypto
//
//  Created by James Allen on 22/12/2024.
//

import Foundation

// Example
/*
 Request:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 Response:
 {
   "id": "bitcoin",
   "symbol": "btc",
   "name": "Bitcoin",
   "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
   "current_price": 97142,
   "market_cap": 1923273646859,
   "market_cap_rank": 1,
   "fully_diluted_valuation": 2039880192539,
   "total_volume": 46356763627,
   "high_24h": 98313,
   "low_24h": 95867,
   "price_change_24h": -737.720103383137,
   "price_change_percentage_24h": -0.7537,
   "market_cap_change_24h": -14748688163.05127,
   "market_cap_change_percentage_24h": -0.76102,
   "circulating_supply": 19799568,
   "total_supply": 21000000,
   "max_supply": 21000000,
   "ath": 108135,
   "ath_change_percentage": -10.29748,
   "ath_date": "2024-12-17T15:02:41.429Z",
   "atl": 67.81,
   "atl_change_percentage": 142948.19739,
   "atl_date": "2013-07-06T00:00:00.000Z",
   "roi": null,
   "last_updated": "2024-12-22T11:24:43.504Z",
   "sparkline_in_7d": {
     "price": [
       102106.36927599549,
       101760.17058400591,
       101737.62631414826,
       101974.94257740684,
       102238.99965639517,
       102273.93697695846,
       102670.03424860006,
       102825.18790843466,
       102856.05544534516,
       102958.85042118382,
       102687.43102436465,
       103035.69724768725,
       103119.40465508131,
       103127.79309660214,
       103273.69291451228,
       103114.82662873341,
       102832.69010004963,
       103299.66293670298,
       104721.50151808978,
       105466.77955550037,
       105494.26514589906,
       104539.43711914279,
       104556.32165668416,
       104599.11753946326,
       104980.61831687567,
       105064.80127579396,
       104987.11672005488,
       104485.50722610675,
       104785.88396917864,
       104649.44144650658,
       103668.76924235463,
       103569.92156219382,
       103873.16095776264,
       105437.55511016781,
       106351.01927429502,
       106794.3051699627,
       106918.82561438138,
       106993.98136116777,
       106657.00169847369,
       105987.7408393201,
       106138.43917329202,
       105810.63129202551,
       106090.34824764448,
       105934.65392664201,
       106439.64216256216,
       106244.34686147372,
       106850.71231638946,
       106505.73714057312,
       106808.00495376455,
       106552.99936336454,
       106812.54995693333,
       107385.08539679593,
       107262.93880856986,
       107057.82114195262,
       106759.84150361962,
       107144.06968293274,
       107257.65075654878,
       108134.70395538819,
       106535.29494891826,
       106955.08767754669,
       107473.87402886094,
       106620.36859225559,
       106495.851999691,
       106867.01636159551,
       106437.50654388372,
       105991.35725127581,
       106034.913402645,
       106149.11340029488,
       105190.79206824518,
       105319.25678272374,
       104741.06291547064,
       103848.14862914359,
       103581.1649173861,
       103745.29390075702,
       104220.26262856125,
       103784.92721839932,
       104018.51039227222,
       104503.22403619888,
       105037.05730308131,
       104983.4812916073,
       104661.925494947,
       103821.24917889903,
       104432.30722802308,
       104094.33900138023,
       104678.01144932646,
       104758.83469100454,
       102841.52482177617,
       100808.59929784118,
       101086.85581469846,
       101083.02779137746,
       100590.40674241254,
       100600.05164879694,
       99633.64670369614,
       100551.46473680543,
       101108.11065724379,
       100726.40114454311,
       101258.80387274455,
       101127.78439769728,
       101633.08154677396,
       101673.23999436577,
       101744.02466948032,
       102392.35475315936,
       102387.29792223322,
       101909.81424970203,
       101863.06927014618,
       101197.40710002492,
       100551.81801428292,
       100586.34545570784,
       98143.20797331037,
       98759.73785158253,
       97157.32411807193,
       96448.90175250097,
       97634.61744421945,
       98136.51932716771,
       97851.35377075805,
       97198.79685094622,
       96029.7899967946,
       97516.2050419872,
       97026.85826080089,
       96660.24567334302,
       97418.38122056802,
       97712.83000438925,
       95276.01330725009,
       94655.00770823027,
       94192.50465512306,
       92805.75666996102,
       93865.8516499566,
       95496.08297611057,
       95642.32275982088,
       96855.10107857324,
       96645.71101759745,
       97234.75395055958,
       97267.9383846706,
       97048.57278195025,
       96362.60195226806,
       96608.99778118312,
       97430.35276861327,
       97691.43431692653,
       97507.84162044193,
       97367.89389041727,
       97359.76640529782,
       97412.50918770437,
       97516.5221543344,
       98661.272804548,
       98675.03031457054,
       99063.71975920832,
       98615.89731302514,
       98538.76505417588,
       98108.60460263013,
       98037.11544014173,
       97377.54934648574,
       97358.57999864942,
       97128.48100400306,
       97470.60341011999,
       97288.66036256633,
       97603.55920607864,
       97286.59877093455,
       97092.14286004793,
       97411.02826020514,
       96941.26398149885,
       97048.2053474754,
       97244.35762866863,
       97172.66559153362,
       97005.50743627905,
       96623.52100166595,
       96902.3772340153,
       96081.76035559733
     ]
   },
   "price_change_percentage_24h_in_currency": -0.7537041395438846
 }
 
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateCurrentHoldings(amount: Double) -> CoinModel {
        return CoinModel(
            id: id,
            symbol: symbol,
            name: name,
            image: image,
            currentPrice: currentPrice,
            marketCap: marketCap,
            marketCapRank: marketCapRank,
            fullyDilutedValuation: fullyDilutedValuation,
            totalVolume: totalVolume,
            high24H: high24H, low24H: low24H,
            priceChange24H: priceChange24H,
            priceChangePercentage24H: priceChangePercentage24H,
            marketCapChange24H: marketCapChange24H,
            marketCapChangePercentage24H: marketCapChangePercentage24H,
            circulatingSupply: circulatingSupply,
            totalSupply: totalSupply,
            maxSupply: maxSupply,
            ath: ath, athChangePercentage: athChangePercentage, athDate: athDate,
            atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate,
            lastUpdated: lastUpdated,
            sparklineIn7D: sparklineIn7D,
            priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency,
            currentHoldings: amount
        )
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
