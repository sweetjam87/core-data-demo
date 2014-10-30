//
//  AppDelegate.h
//  core-data-demo
//
//  Created by James McPherson on 10/29/14.
//  Copyright (c) 2014 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CourseTableViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
