//
//  ViewController.m
//  设计模式_MVVM
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ResultView.h"
#import "ResultViewModel.h"

@interface ViewController ()<ResultViewDelegate>

{
    ResultView *resultV;
    ResultViewModel *_resuleViewModel;
}
@property (weak, nonatomic) IBOutlet UITextField *lable_name;
@property (weak, nonatomic) IBOutlet UITextField *lable_sex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    resultV = [[ResultView alloc] initWithFrame:CGRectMake(50, 300, [UIScreen mainScreen].bounds.size.width - 50 * 2, 50)];
    [self.view addSubview:resultV];
    
    ResultViewModel *resuleViewModel = [[ResultViewModel alloc] init];
    resuleViewModel.delgate = self;
    _resuleViewModel = resuleViewModel;
}

- (IBAction)commit:(id)sender {
    
    Person *person = [[Person alloc] init];
    person.name = _lable_name.text;
    person.sex = _lable_sex.text;
    _resuleViewModel.person = person;
    
    [self.view endEditing:true];
}

#pragma mark - ResultViewDelegate

- (void)showResult:(NSString *)result{
    [resultV showResult:result];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

