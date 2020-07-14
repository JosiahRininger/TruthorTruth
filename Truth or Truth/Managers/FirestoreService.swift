//
//  FirestoreService.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/12/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation
import FirebaseFirestore
import os.log

struct FirestoreService {
    typealias GetQuestionsHandler = (Result<QuerySnapshot, Error>) -> Void
    
    static let db = Firestore.firestore()
    
    // Updates the game data
    static func getQuestions(with questionsType: QuestionsType, completion: @escaping GetQuestionsHandler) {
        let colletionName = questionsType.rawValue
        db.collection(colletionName).getDocuments { querySnapshot, error in
            if let error = error {
                os_log("Error getting documents: ",
                       log: SystemLogger.shared.logger,
                       type: .error,
                       error.localizedDescription)
                completion(.failure(error))
            }
            guard let querySnapshot = querySnapshot else { return }
            completion(.success(querySnapshot))
        }
    }
}
