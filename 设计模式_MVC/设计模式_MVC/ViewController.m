//
//  ViewController.m
//  设计模式_MVC
//
//  Created by ZD on 2018/4/28.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ResultView.h"

@interface ViewController ()

{
    ResultView *resultV;
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
    
}

- (IBAction)commit:(id)sender {
    Person *person = [Person new];
    person.name = self.lable_name.text;
    person.sex = self.lable_sex.text;
    
    resultV.person = person;
    [self.view endEditing:true];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
