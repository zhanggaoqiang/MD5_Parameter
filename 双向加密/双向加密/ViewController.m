//
//  ViewController.m
//  双向加密
//
//  Created by zgq on 16/4/22.
//  Copyright © 2016年 zgq. All rights reserved.
//

#import "ViewController.h"
#import "BidirectionalEncryption.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BidirectionalEncryption  *bt=[[BidirectionalEncryption alloc]init];
       
    NSString *url=@"http://www.51zhaoyou.com/api?userid=13000000000&area=上海&version=200&key=3a9b359137fb68325f7f6ce394d6ef5a";
    NSString *str= [bt  twoWayEncrypted:url];
    NSLog(@"%@",str);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
