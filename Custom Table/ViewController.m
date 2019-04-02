//
//  ViewController.m
//  Custom Table
//
//  Created by Shafiq Shovo on 2/4/19.
//  Copyright © 2019 Shafiq Shovo. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"
@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self myMethod:^(BOOL finished) {
        if(finished)
        {
            NSLog(@"success");
        }
        else{
            NSLog(@"Failure");
        }
    }];
    
    
    customCell *cell1 = [ [ customCell alloc] init];
    cell1.strimg =@"shovo.jpg";
    cell1.strlbl1=@"hlw";
    cell1.strlbl2=@"how are you";
    
    
    customCell *cell2 = [ [ customCell alloc] init];
    cell2.strimg = @"Unknown-2";
    cell2.strlbl1 = @"hey";
    cell2.strlbl2 = @" how are you";
    
    
    _arrdata = [ [ NSMutableArray alloc] initWithObjects:cell1,cell2, nil];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrdata.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
    {
        cell =[ [ UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    customCell *maincell = [_arrdata objectAtIndex:indexPath.row];
    UIImageView *image1= (UIImageView *) [cell viewWithTag:1];
    image1.image= [ UIImage imageNamed:maincell.strimg];
    UILabel *lbl1 = (UILabel *) [ cell viewWithTag:2];
    lbl1.text =  maincell.strlbl1;
    
    UILabel *lbl2 = (UILabel *) [ cell viewWithTag:3];
    lbl2.text = maincell.strlbl2;
    return cell;
    
}
-(void) myMethod:(void (^) (BOOL) )completion{
    
    
    
    
    
    
    NSLog(@"Hello how are You");
    completion(YES);
    
}


@end
