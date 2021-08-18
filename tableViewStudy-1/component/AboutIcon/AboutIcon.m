//
//  AboutIcon.m
//  tableViewStudy-1
//
//  Created by 胡天翔 on 2021/8/17.
//

#import "AboutIcon.h"
#import <Masonry/Masonry.h>

@interface AboutIcon()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *iconLabel;

@end

@implementation AboutIcon

- (instancetype)init{
    self = [super init];
    [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconLabel];
    
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.mas_equalTo(self.contentView);
        make.centerY.mas_equalTo(self.contentView);
    }];
    [self.iconLabel mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerX.mas_equalTo(self.contentView);
            make.centerY.mas_equalTo(self.contentView).offset(65);
    }];
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - getter
- (UIImageView *)iconImageView{
    if(!_iconImageView){
        _iconImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"merchant_about_log"]];
    }
    return _iconImageView;
}

- (UILabel *)iconLabel{
    if(!_iconLabel){
        _iconLabel = [[UILabel alloc] init];
        _iconLabel.text = @"v2.73.0.2352";
    }
    return _iconLabel;
}

@end
