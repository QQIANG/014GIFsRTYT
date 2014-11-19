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
	var is_playing_0 : Bool!
	var timer_ : NSTimer!

	@IBAction func event_next(){
		self.playing()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.


//		var url_ : NSURL! = NSBundle.mainBundle().URLForResource("JNYJ", withExtension: "gif")
//
//		self.image_gif.image = UIImage.animatedImageWithAnimatedGIFURL(url_)
		is_playing_0 = false
		//(timeInterval: 3, target: self, selector: "playing", userInfo: nil, repeats: true)
//		self.timer_ = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "playing", userInfo: nil, repeats: true)
//		self.timer_.fire()

//		self.playing()

	}
	func playing(){
		is_playing_0 =  !is_playing_0
		//]
		self.image_gif.image = nil
		if let item = is_playing_0 {
			if item{
				playing_0()
			}else{
				playing_1()
			}
		}
		//

	}
	func playing_0(){
		GIFs.playing(self.image_gif, index: 0)
	}
	func playing_1(){
		GIFs.playing(self.image_gif, index: 1)
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

