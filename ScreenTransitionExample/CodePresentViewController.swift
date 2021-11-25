//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit


// 데이터를 전달받은 viewController 에서 SendDataDelegate protocol 을 채택하고, delegate 를 위임 받게 되면 senData() 함수가 실행이 되게 됨
protocol SendDataDelegate: AnyObject {
	func sendData(name: String)
}

class CodePresentViewController: UIViewController {
	
	// UI 에 label 추가 
	@IBOutlet weak var nameLabel: UILabel!
	
	// 변수 선언
	var name: String?
	
	// delegate 를 사용할때는 변수 앞에 weak 를 붙여 줘야 함. 만약 안쓰게 되면 strong 이 적용되어서 강한참조가 되어 메모리 누수가 발생됨을 주의
	weak var delegate: SendDataDelegate?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 전달 받은 데이터 처리
		if let name = name {
			self.nameLabel.text = name
			self.nameLabel.sizeToFit()
		}
	}
	
	@IBAction func tabBackButton(_ sender: UIButton) {
		// delegate pattern 으로 뒤로 갈때 data 를 보낼 수 있음
		self.delegate?.sendData(name: "Jacob2")
		self.presentingViewController?.dismiss(animated: true, completion: nil)
	}
	
	
}

