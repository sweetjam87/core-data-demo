//
//  CourseTableViewController.h
//  core-data-demo
//
//  Created by James McPherson on 10/30/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCourseViewController.h"

@interface CourseTableViewController : UITableViewController <AddCourseViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext* managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController* fetchedResultsController;

@end
