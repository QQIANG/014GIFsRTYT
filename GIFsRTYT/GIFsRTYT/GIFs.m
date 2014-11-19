//
//  GIFs.m
//  GIFsRTYT
//
//  Created by JNYJ on 14-11-19.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//

#import "GIFs.h"
#import "UIImage+animatedGIF.h"

#define kScrollObjWidth 320
#define kScrollObjHeight 460
@implementation GIFs

+(void)playing:(UIImageView *)imageView index:(int)index{

	NSArray *stgImageArray = [[NSArray alloc]initWithObjects:@"JNYJ0",@"JNYJ1",nil];

	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW,
											1.4 * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
		if (index >=0 && [stgImageArray count]>index) {
			NSURL *url = [[NSBundle mainBundle] URLForResource: [stgImageArray objectAtIndex:index] withExtension:@"gif"];
			imageView.image = [UIImage animatedImageWithAnimatedGIFData: [NSData dataWithContentsOfURL:url]];
		}
	});
}

//-(void)LoadBottomScrollView:(UIScrollView *)scrollView1
//{
//
//	NSArray *stgImageArray = [[NSArray alloc]initWithObjects:@"JNYJ0.gif",@"JNYJ1.gif"];
//
//
//	[scrollView1.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
//
//	int count = 30
//	NSLog(@"count = %d",count);
//	for(int k = 1; k <= count; k++)
//	{
//		NSString *imageName = [NSString stringWithFormat:@"JNYJ%d",(k%2)];
//
//		UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//		[button.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
//		button.frame = CGRectMake(((k-1)*kScrollObjWidth),
//								  0, kScrollObjWidth,kScrollObjHeight);
//		[button setBackgroundImage:
//		 [UIImage imageNamed:imageName] forState:UIControlStateNormal];
//		[button setTitle:[NSString stringWithFormat:@"Button_%d",k] forState:UIControlStateNormal];
//		button.titleEdgeInsets = UIEdgeInsetsMake(145, 0, 0, 0);
//		[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//		button.titleLabel.font = [UIFont boldSystemFontOfSize:13.0];
//		[button addTarget:self action:
//		 @selector(BottomButtonAction:) forControlEvents:UIControlEventTouchUpInside];
//		button.tag = k;
//		[scrollView1 addSubview:button];
//
//	}
//	//count*146
//	scrollView1.contentSize = CGSizeMake(kNumImages*kScrollObjWidth, scrollView1.frame.size.height);
//}
//
//-(void)BottomButtonAction:(id)sender
//{
//
//	if ([sender tag] == 1)
//	{
//		if (checkCount == YES)
//		{
//			counter = 0;
//		}
//	}
//	if ([sender tag] == 2)
//	{
//		if (checkCount == YES)
//		{
//			counter = 1;
//		}
//	}
//	if ([sender tag] == 3)
//	{
//		if (checkCount == YES)
//		{
//			counter = 2;
//		}
//	}
//	if ([sender tag] == 4)
//	{
//		if (checkCount == YES)
//		{
//			counter = 3;
//		}
//	}
//	if ([sender tag] == 5)
//	{
//		if (checkCount == YES)
//		{
//			counter = 4;
//		}
//	}
//	if ([sender tag] == 6)
//	{
//		if (checkCount == YES)
//		{
//			counter = 5;
//		}
//	}
//	if ([sender tag] == 7)
//	{
//		if (checkCount == YES)
//		{
//			counter = 6;
//		}
//	}
//	if ([sender tag] == 8)
//	{
//		if (checkCount == YES)
//		{
//			counter = 7;
//		}
//	}
//	if ([sender tag] == 9)
//	{
//		if (checkCount == YES)
//		{
//			counter = 8;
//		}
//	}
//	if ([sender tag] == 10)
//	{
//		if (checkCount == YES)
//		{
//			counter = 9;
//		}
//	}
//
//	if ([sender tag] == 11)
//	{
//		if (checkCount == YES)
//		{
//			counter = 10;
//		}
//	}
//	if ([sender tag] == 12)
//	{
//		if (checkCount == YES)
//		{
//			counter = 11;
//		}
//	}
//	if ([sender tag] == 13)
//	{
//		if (checkCount == YES)
//		{
//			counter = 12;
//		}
//	}
//	if ([sender tag] == 14)
//	{
//		if (checkCount == YES)
//		{
//			counter = 13;
//		}
//	}
//	if ([sender tag] == 15)
//	{
//		if (checkCount == YES)
//		{
//			counter = 14;
//		}
//	}
//	if ([sender tag] == 16)
//	{
//		if (checkCount == YES)
//		{
//			counter = 15;
//		}
//	}
//	if ([sender tag] == 17)
//	{
//		if (checkCount == YES)
//		{
//			counter = 16;
//		}
//	}
//	if ([sender tag] == 18)
//	{
//		if (checkCount == YES)
//		{
//			counter = 17;
//		}
//	}
//	if ([sender tag] == 19)
//	{
//		if (checkCount == YES)
//		{
//			counter = 18;
//		}
//	}
//	if ([sender tag] == 20)
//	{
//		if (checkCount == YES)
//		{
//			counter = 19;
//		}
//	}
//
//	if ([sender tag] == 21)
//	{
//		if (checkCount == YES)
//		{
//			counter = 20;
//		}
//	}
//	if ([sender tag] == 22)
//	{
//		if (checkCount == YES)
//		{
//			counter = 21;
//		}
//	}
//	if ([sender tag] == 23)
//	{
//		if (checkCount == YES)
//		{
//			counter = 22;
//		}
//	}
//	if ([sender tag] == 24)
//	{
//		if (checkCount == YES)
//		{
//			counter = 23;
//		}
//	}
//	if ([sender tag] == 25)
//	{
//		if (checkCount == YES)
//		{
//			counter = 24;
//		}
//	}
//	if ([sender tag] == 26)
//	{
//		if (checkCount == YES)
//		{
//			counter = 25;
//		}
//	}
//	if ([sender tag] == 27)
//	{
//		if (checkCount == YES)
//		{
//			counter = 26;
//		}
//	}
//	if ([sender tag] == 28)
//	{
//		if (checkCount == YES)
//		{
//			counter = 27;
//		}
//	}
//	if ([sender tag] == 29)
//	{
//		if (checkCount == YES)
//		{
//			counter = 28;
//		}
//	}
//	if ([sender tag] == 30)
//	{
//		if (checkCount == YES)
//		{
//			counter = 29;
//		}
//	}
//
//	[self action:sender];
//}
//-(void) action:(id)sender
//{
//	double delayInSeconds = 0.0;
////	[stgImageView stopAnimating];
//
////	if(previoussender==[sender tag])
////	{
////		if(individualcount != numberofrepeatcount)
////		{
////			return;
////		}
////	}
////
////	if (player != nil) {
////		[player stop];
////		player = nil;
////	}
////
////	if(Isautoplay)
////	{
////		if(counter== [stgImageArray count])
////		{
////			counter=0;
////		}
////		NSLog(@"counter = %d",counter);
////	}
////
////	if (stgImageView !=nil) {
////		stgImageView.image = nil;
////	}
////
////	strImagePath = [stgImageArray objectAtIndex:counter];
////	[stgImageView setImage:[UIImage imageNamed:
////							[NSString stringWithFormat:@"%@_%d.png",strImagePath,index]]];
////
////	stgText.text= [NSString stringWithFormat:@"%@", [stgTextArray objectAtIndex:counter]];
////
////	if ([[[NSUserDefaults standardUserDefaults]
////		  valueForKey:@"soundSwitch"] isEqualToString:@"2"]) {
////
////
////		NSString *soundpath = [[NSBundle mainBundle] pathForResource:[stgTextArray objectAtIndex:counter] ofType:@"wav"];
////		[self audioPlayer:[NSURL fileURLWithPath:soundpath]];
////		delayInSeconds = 1.4;
////
////	}
////	else
////	{
////		delayInSeconds = 0.0;
////	}
////
//
//	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW,
//											delayInSeconds * NSEC_PER_SEC);
//	dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//
//
////		animationcount = 0;
////		NSString *str = [aniImageCount objectAtIndex:counter];
////		totalDuration = [str floatValue];
////		numberofrepeatcount = 3;
////		individualcount = 1;
////		str = [aniDuration objectAtIndex:counter];
////		countes = [str floatValue];
////
////		if (stgImageView !=nil) {
////			stgImageView.image = nil;
////		}
//
//		NSURL *url = [[NSBundle mainBundle] URLForResource:
//					  @"JNYJ"/*[stgImageArray objectAtIndex:counter]*/ withExtension:@"gif"];
//		stgImageView.image = [UIImage animatedImageWithAnimatedGIFData:
//							  [NSData dataWithContentsOfURL:url]];
//		
////		NSString *soundpath = [[NSBundle mainBundle] pathForResource:
////							   [aniSoundList objectAtIndex:counter] ofType:@"wav"];
////		[self audioPlayer:[NSURL fileURLWithPath:soundpath]];
//	});
//	
//	if(!Isautoplay)
//	{
//		previoussender = [sender tag];
//	}
//}
@end
