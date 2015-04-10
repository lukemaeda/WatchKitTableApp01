//
//  TableInterfaceController.m
//  WatchKitTableApp01
//
//  Created by MAEDAHAJIME on 2015/04/07.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "TableInterfaceController.h"
#import "TableRowController.h"
#import "DetailInterfaceController.h"

@interface TableInterfaceController()

// 花火一覧テーブル
@property (weak, nonatomic) IBOutlet WKInterfaceTable *firetable;
@property (strong, nonatomic) NSArray *fireNames;
@property (strong, nonatomic) NSArray *fireimages;
@property (strong, nonatomic) NSArray *fireBigimages;
@end


@implementation TableInterfaceController

// 最初に呼び出されるメソッド
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    // テーブルデータの読み込み
    [self loadTableData];
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

// TableのImageに画像、Labelにテキストを流し込む
- (void)loadTableData {
    
    // 花火名
    self.fireNames = @[@"千輪", @"菊先", @"菊先", @"菊先", @"型物"];
    // サムネイル画像小
    self.fireimages = @[@"imgm01.png",@"imgm03.png",@"imgm04.png",@"imgm05.png",@"imgm06.png"];
    // 画像大
    self.fireBigimages = @[@"img01.png",@"img03.png",@"img04.png",@"img05.png",@"img06.png"];
    // 花火名 行の要素を設定
    [self.firetable setNumberOfRows:self.fireNames.count withRowType:@"default"];
    
    [self.fireNames enumerateObjectsUsingBlock:^(NSString *firName, NSUInteger idx, BOOL *stop) {
        
        // テーブル行の生成
        TableRowController *row = [self.firetable rowControllerAtIndex:idx];
        
        // テーブル行 花火名前に転送 (TableRowController)
        [row.firename setText:firName];
        // テーブル行 花火画像に転送 (TableRowController)
        [row.fireicon setImageNamed:[self.fireimages objectAtIndex:idx]];

    }];
}

// Tableをタップした時の画面遷移処理
- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    
    // 画像名を指定して詳細表示
    [self presentControllerWithNames:@[@"DetailInterfaceController"]
                            contexts:@[[self.fireBigimages objectAtIndex:rowIndex]]];
}

@end



