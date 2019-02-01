//
//  QuizModel.swift
//  Quizzes
//
//  Created by TingxinLi on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class QuizModel {
    private static let filename = "QuizList.plist"
    private static var quizsData = [Quiz]()
    
    
    static func saveQuiz() {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(quizsData)
            
            try data.write(to: path, options: Data.WritingOptions.atomic)
            
        } catch {
            print("property list encoding error: \(error)")
        }
    }
    
    
    static func getQuiz() -> [Quiz] {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename).path
        
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    quizsData = try PropertyListDecoder().decode([Quiz].self, from: data)
                    
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("getQuiz data is nil")
            }
        }else {
            print("\(filename) does not exist")
        }
        return quizsData
    }
    
    static func deleteQuiz(atIndex index: Int) {
        quizsData.remove(at: index)
        saveQuiz()
    }
    
    static func addQuiz(quiz: Quiz) {
        quizsData.append(quiz)
        saveQuiz()
    }
    
}
