//
//  ViewController.swift
//  GIFsRTYT
//
//  Created by JNYJ on 14-11-18.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var image_gif : UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		var url_ : NSURL! = NSBundle.mainBundle().URLForResource("JNYJ", withExtension: "gif")

		self.image_gif.image = UIImage.animatedImageWithAnimatedGIFURL(url_)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

