//
//  TrackDetailPresenter.swift
//  iMusic
//
//  Created by Ricardo Casanova on 24/02/2019.
//  Copyright © 2019 Pijp. All rights reserved.
//

import Foundation

class TrackDetailPresenter {
    
    private weak var view: TrackDetailViewInjection?
    private let track: TrackViewModel
    private let router: TrackDetailRouterDelegate
   
    // MARK - Lifecycle
    init(view: TrackDetailViewInjection, track: TrackViewModel, navigationController: UINavigationController? = nil) {
        self.view = view
        self.track = track
        self.router = TrackDetailRouter(navigationController: navigationController)
    }
    
}

// MARK: - TrackDetailPresenterDelegate
extension TrackDetailPresenter: TrackDetailPresenterDelegate {
    
    func viewDidLoad() {
        view?.loadTrack(track)
    }
    
}