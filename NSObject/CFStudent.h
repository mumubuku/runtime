//
//  CFStudent.h
//  NSObject
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#import "CFPerson.h"

NS_ASSUME_NONNULL_BEGIN
@protocol StudentRule
@optional
- (void)borrowBook;
@end
@interface CFStudent : CFPerson<StudentRule>
//学校
@property (nonatomic, strong) NSString *school;
//学习
- (void)studying;
//学习某本书
- (void)studyingWithBook:(NSString *)bookName;
//在某个地方学习某本书
- (void)studyingWithBook:(NSString *)bookName inPlace:(NSString *)placeName;

@end

NS_ASSUME_NONNULL_END
