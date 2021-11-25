//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class CodePushViewController: UIViewController {
	@IBOutlet weak var nameLabel: UILabel!
	
	var name: String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 전달 받은 데이터 처리
		if let name = name {
			self.nameLabel.text = name
			self.nameLabel.sizeToFit()
		}
	}
	
	@IBAction func tabBackBtn(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
	}
	
	
}
