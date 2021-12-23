//
//  ApiManager.swift
//  GET People
//
//  Created by R on 18/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import Foundation
    struct getApi{
        func ApiData(comp: @escaping(Film)->()) {

            let api = URL(string:"https://swapi.dev/api/people/?format=json")
            URLSession.shared.dataTask(with: api!) { (data, res, err) in
                if  err != nil{
                print(err!.localizedDescription)
            }
            if let data = data{
                do{
                    let result = try JSONDecoder().decode(Film.self, from: data)
                       comp(result)
                }catch{
                    print("no data")
                }
            }
        }.resume()
    }
        
            func ApiDataFilm(comp: @escaping(Film2)->()) {

                let api = URL(string:"https://swapi.dev/api/films/?format=json")
                URLSession.shared.dataTask(with: api!) { (data, res, err) in
                    if  err != nil{
                    print(err!.localizedDescription)
                }
                if let data = data{
                    do{
                        let result = try JSONDecoder().decode(Film2.self, from: data)
                           comp(result)
                    }catch{
                        print("no data")
                    }
                }
            }.resume()
        }
}
