//
//  MLCustomSheet.h
//  Medicine
//
//  Created by Visoport on 20/12/16.
//  Copyright © 2016年 Visoport. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MLCustomSheetDelegate <NSObject>

-(void)clickButton:(NSUInteger)buttonTag sheetCount:(NSUInteger)sheet;

@end

@interface MLCustomSheet : UIView


@property (nonatomic,weak) id<MLCustomSheetDelegate>delegate;


// 当一个控制器有多个需要使用到时， 利用sheetMark就行标记判断
@property (nonatomic, assign) NSInteger sheetMark;


// tableview  是指当前是控制器有没有tabbar  根据所需判断
-(MLCustomSheet*)initWithButtons:(NSArray*)allButtons isTabbar:(BOOL)tabbar;


#pragma mark -RAC
//@property (nonatomic, strong) RACSubject *customSheetSubject;

@end
