//
//  AboutLabelTableViewCell.m
//  tableViewStudy-1
//
//  Created by 胡天翔 on 2021/8/17.
//

#import "AboutLabelTableViewCell.h"

@implementation AboutLabelTableViewCell

- (instancetype)init{
    self = [super init];
    self.textLabel.text = nil;
    UILabel *aboutAccessory = [[UILabel alloc] initWithFrame:CGRectMake(0, 7, 110,30)];
    aboutAccessory.text = @"Latest Version";
    self.accessoryView = aboutAccessory;
    
    return self;
}

- (void)loadData:(NSString *)aboutTitle{
    self.textLabel.text = aboutTitle;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
