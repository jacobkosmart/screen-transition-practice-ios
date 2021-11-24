//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func tabCodePushBtn(_ sender: UIButton) {
		guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") else { return }
		
		self.navigationController?.pushViewController(viewController, animated: true)
	}
	
	@IBAction func tabCodePresentButton(_ sender: UIButton) {
		guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else { return }
		viewController.modalPresentationStyle = .fullScreen
		self.present(viewController, animated: true, completion: nil)
	}
}

