//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class SeguePushViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	// 이전화면으로 돌아가기 버튼 만들기
	@IBAction func tapBackBtn(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
		// 이전 화면이 아니라, root 설정된 page 로 이동
		// self.navigationController?.popToRootViewController(animated: true)
	}
	
}
