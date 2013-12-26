//
//  MTViewController.h
//  CustomPhotoAlbumDemo
//
//  Created by Marin Todorov on 11/6/11.
//  Copyright (c) 2011 Marin Todorov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface MTViewController : UIViewController <UIImagePickerControllerDelegate>

@property (strong, atomic) ALAssetsLibrary* library;
@property (strong, nonatomic) IBOutlet UIImageView *imageBG;
@property (strong, nonatomic) IBOutlet UIButton *butBG;
- (IBAction)butClick:(id)sender;
- (IBAction)clearimageViewBG:(id)sender;

@end
