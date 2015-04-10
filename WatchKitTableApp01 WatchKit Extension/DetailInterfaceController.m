//
//  DetailInterfaceController.m
//  WatchKitTableApp02
//
//  Created by MAEDAHAJIME on 2015/04/07.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "DetailInterfaceController.h"


@interface DetailInterfaceController()

// 画像
@property (weak, nonatomic) IBOutlet WKInterfaceImage *image;

@end


@implementation DetailInterfaceController

// 最初に呼び出されるメソッド
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    // 画像を表示
    [self.image setImageNamed:context];
}

// ユーザーにUIが表示されたタイミングで呼び出されるメソッド
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

// UIが非表示になったタイミングで呼び出されるメソッド
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



