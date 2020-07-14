//
//  CategoryDetailController.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/11/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit
import Koloda

final class CategoryDetailController: TOTViewController {
    
    let categoryDetailView = CategoryDetailView()
    var questionModels = [QuestionModel]()
    var categoryViewModel: CategoryViewModel?
    var questionsType: QuestionsType?
    
    init(questionsType: QuestionsType) {
        self.questionsType = questionsType
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
// MARK: - View Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryDetailView.kolodaView.delegate = self
        categoryDetailView.kolodaView.dataSource = self
        categoryViewModel = CategoryViewModel(delegate: self)
        
        fetchQuestions(for: questionsType)
        
        setup(with: categoryDetailView)
        
        setupNavigationItem()
    }
    
    func setupNavigationItem(){
        navigationItem.title = questionsType?.rawValue ?? ""
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: .back, style:.plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .send, style:.plain, target: self, action: #selector(goBack))
    }

// MARK: - Helper Methods
    private func fetchQuestions(for questionsType: QuestionsType?) {
        guard let questionsType = questionsType else { return }
        categoryViewModel?.fetchQuestions(for: questionsType)
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - CategoryViewModel Methods
extension CategoryDetailController: CategoryViewModelDelegate {
    func questionsRetrieved(_ questionModels: [QuestionModel]) {
        self.questionModels = questionModels
        
        categoryDetailView.kolodaView.reloadData()
    }
}

// MARK: - KolodaView Methods
extension CategoryDetailController: KolodaViewDelegate, KolodaViewDataSource {
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        print("Selected Card")
    }
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return questionModels.count
    }
    
    func kolodaShouldMoveBackgroundCard(_ koloda: KolodaView) -> Bool {
        return false
    }
    
    func kolodaShouldTransparentizeNextCard(_ koloda: KolodaView) -> Bool {
        return false
    }

    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        return UIElementsManager.createKolodaCard(with: questionModels[index].text)
    }
}

