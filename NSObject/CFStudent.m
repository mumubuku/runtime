//
//  CFStudent.m
//  NSObject
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#import "CFStudent.h"

@implementation CFStudent
//学习
- (void)studying
{
    NSLog(@"Student studying！");
}
//学习某本书
- (void)studyingWithBook:(NSString *)bookName
{
    NSLog(@"Student studyingWithBook：%@!",bookName);
}
//在某个地方学习某本书
- (void)studyingWithBook:(NSString *)bookName inPlace:(NSString *)placeName
{
   // NSLog(@"Student studyingWithBook：%@! inPlace：%@",bookName,placeName);
}
- (void)borrowBook
{
    NSLog(@"borrowBook!");
}
@end
