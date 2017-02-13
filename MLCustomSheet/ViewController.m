//
//  ViewController.m
//  MLCustomSheet
//
//  Created by Visoport on 13/2/17.
//  Copyright © 2017年 Visoport. All rights reserved.
//

#import "ViewController.h"
#import "MLCustomSheet.h"


@interface ViewController () <MLCustomSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    MLCustomSheet *sheet = [[MLCustomSheet alloc] initWithButtons:@[@"照相机", @"本地相簿"] isTabbar:NO];
    sheet.delegate = self;
    [self.view addSubview:sheet];
}

#pragma mark - MLCustomSheetDelegate
- (void)clickButton:(NSUInteger)buttonTag sheetCount:(NSUInteger)sheet
{
    switch (buttonTag) {
        case 0://照相机
        {
            NSLog(@"照相机");
        }
            break;
        case 1://本地相簿
        {
            NSLog(@"本地相簿");
        }
            break;
            
        default:
            break;
    }
}


@end
