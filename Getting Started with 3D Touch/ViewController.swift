//
//  ViewController.swift
//  Getting Started with 3D Touch
//
//  Copyright © 2015 Syncode Software Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func previewActionItems() -> [UIPreviewActionItem] {
		let action_1 = UIPreviewAction(title: "Some Action", style: .Default) { (action: UIPreviewAction, vc: UIViewController) -> Void in
			NSLog("Some Action was selected")
		}
		
		let action_2 = UIPreviewAction(title: "Another Action 1", style: .Default) { (action: UIPreviewAction, vc: UIViewController) -> Void in
			NSLog("Another Action 1 was selected")
		}
		
		let action_3 = UIPreviewAction(title: "Another Action 2", style: .Default) { (action: UIPreviewAction, vc: UIViewController) -> Void in
			NSLog("Another Action 2 was selected")
		}
		
		let action_4 = UIPreviewActionGroup(title: "More...", style: .Default, actions: [action_2, action_3])
		
		let action_5 = UIPreviewAction(title: "Remove", style: .Destructive) { (action: UIPreviewAction, vc: UIViewController) -> Void in
			NSLog("Remove was selected")
		}
		
		return [action_1, action_4, action_5]
	}

}
