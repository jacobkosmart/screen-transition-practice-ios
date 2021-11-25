//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

class SeguePushViewController: UIViewController {
	// UI 에서 label 연결
	@IBOutlet weak var nameLabel: UILabel!
	
	// 변수 생성
	var name: String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// 전달 받은 data 를 nameLabel 에 표시하기
		if let name = name {
			self.nameLabel.text = name
			self.nameLabel.sizeToFit()
		}
	}
		
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("ViewController view 가 나타날 것이다")
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("VuewController view 가 나타났다.")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		print("ViewCOntroller view 가 사라질 것이다.")
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		print("ViewController view 가 사라졌다")
	}
	
	
	
	// 이전화면으로 돌아가기 버튼 만들기
	@IBAction func tapBackBtn(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
		// 이전 화면이 아니라, root 설정된 page 로 이동
		// self.navigationController?.popToRootViewController(animated: true)
	}
	
}
