//
//  QuizAPIClient.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class QuizAPIClient {
    static func searchQuiz(keyword: String, completion: @escaping (AppError?, [Quiz]?) -> Void) {
        
        NetworkHelper.shared.performDataTask(endpointURLString: "http://5c4d4c0d0de08100147c59b5.mockapi.io/api/v1/quizzes", httpMethod: "GET", httpBody: nil) { (appError, data) in
            if let appError = appError {
                completion(appError, nil)
            }
            if let data = data {
                do {
                    let quizData = try JSONDecoder().decode([Quiz].self, from: data)
                    
                    completion(nil, quizData)
                } catch {
                    completion(appError, nil)
                }
            }
        }
    }
}
