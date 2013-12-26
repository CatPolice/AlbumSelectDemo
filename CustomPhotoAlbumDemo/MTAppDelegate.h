//
//  MTAppDelegate.h
//  CustomPhotoAlbumDemo
//
//  Created by Marin Todorov on 11/6/11.
//  Copyright (c) 2011 Marin Todorov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MTViewController;

@interface MTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MTViewController *viewController;

@end
