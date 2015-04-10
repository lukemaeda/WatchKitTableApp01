//
//  TableRowController.h
//  WatchKitTableApp01
//
//  Created by MAEDAHAJIME on 2015/04/07.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

// WatchKitに変更
@import WatchKit;

@interface TableRowController : NSObject

// テーブル行の画像
@property (weak, nonatomic) IBOutlet WKInterfaceImage *fireicon;
// テーブル行のラベル
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *firename;

@end
