//
//  OverLayerVC.swift
//  PopUp OverLayer
//
//  Created by sweta makuwala on 02/11/23.
//

import UIKit

class OverLayerVC: UIViewController {
    @IBOutlet weak var backView : UIView!
    @IBOutlet weak var contentView : UIView!
    
    init() {
        super.init(nibName: "OverLayerVC", bundle: nil)
        self.modalPresentationStyle = .overCurrentContext
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configeView()
    }
    @IBAction func btnDismissPopUpclicked(_ sender: UIButton) {
        self.hide()
        
    }
    private func configeView(){
        self.view.backgroundColor = .clear
        self.backView.backgroundColor = .black.withAlphaComponent(0.6)
//        self.backView.alpha = 0
//        self.contentView.alpha = 0
//        self.contentView.layer.cornerRadius = 10
        
    }
    
    func appear(sender : UIViewController) {
        sender.present(self, animated: false){
            self.show()
        }
    }
    private func show(){
        UIView.animate(withDuration: 1, delay: 0.1) {
            self.backView.alpha = 1
            self.contentView.alpha = 1
        }
    }
    private func hide(){
        UIView.animate(withDuration: 1, delay: 0.1, options: .curveEaseOut) {
            self.backView.alpha = 0
            self.contentView.alpha = 0
           
        }completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        }
    }
}
