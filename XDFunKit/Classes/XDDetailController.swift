//
//  XDDetailController.swift
//  FunDemo
//
//  Created by liuxy on 2024/2/21.
//

import UIKit

class XDDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        view.addSubview(playButton)
        playButton.frame = CGRect(x: 10, y: 100, width: 200, height: 300)
        
    }
    
    //lazy
    lazy var playButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .red
        button.setTitle("播放", for: .normal)
        button.addTarget(self, action: #selector(playAction), for: .touchUpInside)
        return button
    }()
}

extension XDDetailController {
    
    public func changeButtonTitle() {
        playButton.setTitle("4444", for: .normal)
    }
    
    @objc func playAction() {
        playButton.setTitle("222", for: .normal)
    }
}
