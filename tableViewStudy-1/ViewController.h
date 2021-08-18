//
//  ViewController.h
//  tableViewStudy-1
//
//  Created by 胡天翔 on 2021/8/17.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITabBarDelegate>

@property (nonatomic, retain) NSArray *dataSection0;
@property (nonatomic, retain) NSArray *dataSection1;
@property (nonatomic, retain) NSArray *dataSection2;

@end

