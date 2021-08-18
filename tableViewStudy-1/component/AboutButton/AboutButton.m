//
//  AboutButton.m
//  tableViewStudy-1
//
//  Created by 胡天翔 on 2021/8/17.
//

#import "AboutButton.h"

@implementation AboutButton

- (instancetype)init{
    self = [super init];
    self.textLabel.text = nil;
    UIImage *img = [UIImage imageNamed:@"ic_arrow_right"];
    self.accessoryView = [[UIImageView alloc] initWithImage:img];
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
