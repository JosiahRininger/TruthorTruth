//
//  FirestoreService.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/12/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation
import FirebaseFirestore
import Reachability

struct FirestoreService {
    typealias GetQuestionsHandler = (Result<QuerySnapshot, TOTError>) -> Void
    
    static let db = Firestore.firestore()
    
    static private let reachability = try! Reachability()
    
    static func listenForNetworkChanges() {
        reachability.listenForNetworkChanges()
    }
    
    // Gets all the questions for a category
    static func getQuestions(with questionsType: QuestionsType, completion: @escaping GetQuestionsHandler) {
        switch reachability.isConnectedToNetwork {
        case .success:
            let colletionName = questionsType.rawValue
            db.collection(colletionName).getDocuments { querySnapshot, error in
                if let error = error {
                    completion(.failure(TOTError.unknown.log(error.localizedDescription)))
                }
                guard let querySnapshot = querySnapshot else { return }
                completion(.success(querySnapshot))
            }
        case .failure(let error): completion(.failure(error))
        }
    }
}
