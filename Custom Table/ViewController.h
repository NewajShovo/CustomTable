//
//  ViewController.h
//  Custom Table
//
//  Created by Shafiq Shovo on 2/4/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) NSMutableArray *arrdata;

@end
