//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class CodePresentViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	@IBAction func tabBackButton(_ sender: UIButton) {
		self.presentingViewController?.dismiss(animated: true, completion: nil)
	}
	
	
}
