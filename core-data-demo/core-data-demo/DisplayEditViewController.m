//
//  DisplayEditViewController.m
//  core-data-demo
//
//  Created by James McPherson on 10/30/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

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
    // Date Formatter
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MM-dd-YYYY"];
    
    // Display TextField Values
    _titleField.text = [self.currentCourse title];
    _authorField.text = [self.currentCourse author];
    _releaseDateField.text = [dateFormat stringFromDate:[self.currentCourse releaseDate]];
    
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


- (IBAction)onUpdateComplete:(id)sender {
    
    _currentCourse.title = _titleField.text;
    _currentCourse.author = _authorField.text;
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MM-dd-YYYY"];
    _currentCourse.releaseDate = [dateFormat dateFromString:_releaseDateField.text];
    
    AppDelegate* myApp = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [myApp saveContext];
    
    _editButton.hidden = NO;
    _doneButton.hidden = YES;
    
    // Make Text Fields editable
    _titleField.enabled = NO;
    _authorField.enabled = NO;
    _releaseDateField.enabled = NO;
    
    // Change the style of text field
    _titleField.borderStyle = UITextBorderStyleNone;
    _authorField.borderStyle = UITextBorderStyleNone;
    _releaseDateField.borderStyle = UITextBorderStyleNone;
}

- (IBAction)onEdit:(id)sender {
    _editButton.hidden = YES;
    _doneButton.hidden = NO;
    
    // Make Text Fields editable
    _titleField.enabled = YES;
    _authorField.enabled = YES;
    _releaseDateField.enabled = YES;
    
    // Change the style of text field
    _titleField.borderStyle = UITextBorderStyleRoundedRect;
    _authorField.borderStyle = UITextBorderStyleRoundedRect;
    _releaseDateField.borderStyle = UITextBorderStyleRoundedRect;
}

@end
