//
//  AddCourseViewController.h
//  core-data-demo
//
//  Created by James McPherson on 10/30/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate

-(void)addCourseViewControllerDidSave;
-(void)addCourseViewControllerDidCancel:(Course*)courseToDelete;

@end

@interface AddCourseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *releaseDateField;
@property (strong, nonatomic) Course* currentCourse;
@property (weak, nonatomic) id <AddCourseViewControllerDelegate> delegate;


- (IBAction)onCancel:(id)sender;
- (IBAction)onSave:(id)sender;

@end
