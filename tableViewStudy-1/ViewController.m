//
//  ViewController.m
//  tableViewStudy-1
//
//  Created by 胡天翔 on 2021/8/17.
//

#import "ViewController.h"
#import "AboutButton.h"
#import "AboutLabelTableViewCell.h"
#import "AboutIcon.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title =  @"泰国About页面重写";
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height) style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.dataSection0=[[NSArray alloc] initWithObjects:@"v2.73.0.2352", nil];
    self.dataSection1=[[NSArray alloc] initWithObjects: @"Version Info", @"Version Update", nil];
    self.dataSection2=[[NSArray alloc] initWithObjects: @"Clear Cache", nil];
}

// 决定有几个section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

// 决定section的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return self.data.count;
    if (section == 0){
        return 1;
    }else if(section == 1){
        return 2;
    }else{
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 250;
    }
    else{
        return 44;
    }
}

// 进行cell的样式定制与展示
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
//    if (indexPath.row == 2){
//        cell = [[AboutLabelTableViewCell alloc] init];
//        [((AboutLabelTableViewCell *)cell) loadData:self.data[indexPath.row]];
//    }else if (indexPath.row == 1 || indexPath.row == 3){
//        cell = [[AboutButton alloc] init];
//        [((AboutButton *)cell) loadData:self.data[indexPath.row]];
//    }else{
//        cell = [[AboutIcon alloc] init];
//    }
    if (indexPath.section == 0){
        cell = [[AboutIcon alloc] init];
    }else if (indexPath.section == 2){
        cell = [[AboutButton alloc] init];
        [((AboutButton *)cell) loadData:self.dataSection2[indexPath.row]];
    }else{
        if (indexPath.row == 0){
            cell = [[AboutButton alloc] init];
            [((AboutButton *)cell) loadData:self.dataSection1[indexPath.row]];
        }
        else{
            cell = [[AboutLabelTableViewCell alloc] init];
            [((AboutLabelTableViewCell *)cell) loadData:self.dataSection1[indexPath.row]];
        }
    }
    
    return cell;
}

@end
