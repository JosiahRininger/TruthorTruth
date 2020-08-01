//
//  CategoryViewModel.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/12/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import Foundation
import FirebaseFirestore

protocol CategoryViewModelDelegate: class {
    func questionsRetrieved(_ questionModels: [QuestionModel])
    func showErrorFlash(_ error: TOTError)
}

class CategoryViewModel {
    private weak var delegate: CategoryViewModelDelegate?
    
    init(delegate: CategoryViewModelDelegate) {
        self.delegate = delegate
    }
    
    // Updates the game data
    public func fetchQuestions(for questionsType: QuestionsType) {
        FirestoreService.getQuestions(with: questionsType) { [weak self] result in
            switch result {
            case .success(let querySnapshot):
                self?.handleQuestions(with: querySnapshot)
            case .failure(let error): self?.errorExist(error)
            }
        }
    }
    
    private func handleQuestions(with querySnapshot: QuerySnapshot) {
        var questionModels = [QuestionModel]()
        for document in querySnapshot.documents {
            if let text = document.data()[String.DB.text] as? String {
                questionModels.append(QuestionModel(text: text, id: document.documentID))
            }
        }
        delegate?.questionsRetrieved(questionModels)
    }
    
    private func errorExist(_ error: TOTError) {
        error.log()
        delegate?.showErrorFlash(error)
    }
}
