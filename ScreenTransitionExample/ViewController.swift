//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by Jacob Ko on 2021/11/24.
//

import UIKit

// 타입으로 sendDataDelegate 를 채택 해줘야 함
class ViewController: UIViewController, SendDataDelegate {
	@IBOutlet weak var nameLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("ViewController view 가 로드됨")
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
	
	@IBAction func tabCodePresentButton(_ sender: UIButton) {
		
		// downcasting: 각 타입에 맞는 viewController 를 각각의 정의한 name property 에 접근할 수 있음
		guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
		viewController.modalPresentationStyle = .fullScreen
		
		// name property 에 접근해서 data 를 넘겨주기
		viewController.name = "Jacob"
		
		// delegate 된 data 가져오기
		viewController.delegate  = self
		self.present(viewController, animated: true, completion: nil)
	}
	
	
	
	@IBAction func tabCodePushBtn(_ sender: UIButton) {
		guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
		
		viewController.name = "Jacob"
		self.navigationController?.pushViewController(viewController, animated: true)
	}
	
	// override prepare method
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// 전환하고자 하는 viewController 의 instance 가져오기 하고 downcasting 하기
		if let viewController = segue.destination as? SeguePushViewController {
			viewController.name = "Jacob"
		}
		
	}
	

	// delegate 된 sendData UI label 과 연결 시키기 위한 method
	func sendData(name: String) {
		self.nameLabel.text = name
		// text 사이즈에 맞게 사이즈 맞추기
		self.nameLabel.sizeToFit()
	}
}

