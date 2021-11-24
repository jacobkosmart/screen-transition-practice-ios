//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class CodePushViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	@IBAction func tabBackBtn(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
	}
	
	
}
