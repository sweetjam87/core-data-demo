//
//  AddCourseViewController.m
//  core-data-demo
//
//  Created by James McPherson on 10/30/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _titleField.text = [self.currentCourse title];
    _authorField.text = [self.currentCourse author];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM-dd-YYYY"];
    _releaseDateField.text = [dateFormatter stringFromDate:[self.currentCourse releaseDate]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onCancel:(id)sender {
    // Call the delegate and pass in the Current Course
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
}

- (IBAction)onSave:(id)sender {
    // Create a Date Format
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM-dd-YYYY"];
    
    // Set currentCourse with values from Text Field
    [self.currentCourse setTitle:_titleField.text];
    [self.currentCourse setAuthor:_authorField.text];
    [self.currentCourse setReleaseDate:[dateFormatter dateFromString:_releaseDateField.text]];
    
    // Call delegate method for saving data
    [self.delegate addCourseViewControllerDidSave];
}
@end
