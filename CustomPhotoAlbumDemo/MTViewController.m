//
//  MTViewController.m
//  CustomPhotoAlbumDemo
//
//  Created by Marin Todorov on 11/6/11.
//  Copyright (c) 2011 Marin Todorov. All rights reserved.
//

#import "MTViewController.h"
#import "ALAssetsLibrary+CustomPhotoAlbum.h"
@implementation MTViewController

@synthesize library;

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.library = [[ALAssetsLibrary alloc] init];
}

- (void)viewDidUnload
{
    self.library = nil;
    [super viewDidUnload];
}

- (IBAction)takePhoto
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	imagePickerController.editing = YES;
    imagePickerController.delegate = (id)self;
    
    [self presentModalViewController:imagePickerController animated:YES];
}


#pragma mark Image picker delegate methdos
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
//    [self.library saveImage:image toAlbum:@"Touch Code Magazine" withCompletionBlock:^(NSError *error) {
//        if (error!=nil) {
//            NSLog(@"Big error: %@", [error description]);
//        }
//    }];
    
    
    [self.imageBG.layer setMasksToBounds:YES];
    [self.imageBG.layer setCornerRadius:10.0];
    self.imageBG.image = image;
    [picker dismissModalViewControllerAnimated:NO];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:NO];
}

#pragma mark imageview click
-(void)onClickImage{
    NSLog(@"imageview is clicked!");
}

- (IBAction)butClick:(id)sender {
    NSLog(@"???????");
}

- (IBAction)clearimageViewBG:(id)sender {
    NSLog(@">>>>>>>>>>>");
    self.imageBG.image = nil;
}
@end
