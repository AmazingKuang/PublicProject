//
//  OrderSecondRowCell.m
//  GZDoctor
//
//  Created by khj on 2020/8/13.
//  Copyright © 2020 张浩. All rights reserved.
//

#import "AppointmentMedicaCell.h"
#import "RickyConst.h"

@interface AppointmentMedicaCell ()

@property (weak, nonatomic) IBOutlet UIView *sbgView;

/** 医院名称 */
@property (weak, nonatomic) IBOutlet UILabel *hospitalNameLabel;

/** 电话视图 */
@property (weak, nonatomic) IBOutlet UIImageView *phoneImageView;

/** 电话标题 */
@property (weak, nonatomic) IBOutlet UILabel *phoneTitleLabel;

/** 地址标题 */
@property (weak, nonatomic) IBOutlet UILabel *adressTitleLabel;

/** 电话 */
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

/** 地址 */
@property (weak, nonatomic) IBOutlet UILabel *adressLabel;



@end


@implementation AppointmentMedicaCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = KClearColor;
    self.sbgView.layer.cornerRadius = 6;
    self.hospitalNameLabel.font = kBlodFont(14.0f);
    self.phoneTitleLabel.font = kFont(13.0f);
    self.phoneLabel.font = kFont(13.0f);
    self.adressTitleLabel.font = kFont(13.0f);
    self.adressLabel.font = kFont(13.0f);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
