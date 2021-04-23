//
//  HomeViewController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "HomeViewController.h"
#import "FirstViewController.h"
#import "UserTool.h"
#import "UserModel.h"
@interface HomeViewController ()
@property (nonatomic, retain) UITextField *textField;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    UIButton *but = [UIButton buttonWithType:(UIButtonTypeCustom)];
    but.frame = CGRectMake(20, 100, 100, 44);
    but.backgroundColor = [UIColor greenColor];
    [but setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [but setTitle:@"点击" forState:(UIControlStateNormal)];
    [but addTarget:self action:@selector(didClickedButton) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:but];
    
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 200, 100, 40)];
    self.textField.backgroundColor = [UIColor redColor];
    [self.view addSubview:_textField];
    
}
- (void)didClickedButton {
    UserModel *model = [UserModel new];
    model.userName = @"旷华军";
    model.userId = @"11111";
    model.nickName = @"旷世一刀";
    [UserTool saveUserInfo:model];
    [self.navigationController pushViewController:[FirstViewController new] animated:YES];
    
    if ([self JudgeTheillegalCharacter:self.textField.text]) {
        NSLog(@"非法字符");
    } else {
        NSLog(@"正确的");

    }
}
//判断是否含有非法字符 yes 有  no没有
- (BOOL)JudgeTheillegalCharacter:(NSString *)content{
    //提示 标签不能输入特殊字符
    NSString *str =@"^([\u4e00-\u9fa5]|[a-z,A-Z]|[0-9]|\\(|\\)|\\s|\\-){3,100}$";
    NSPredicate* emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", str];
    if (![emailTest evaluateWithObject:content]) {
        return YES;
    }
    return NO;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
