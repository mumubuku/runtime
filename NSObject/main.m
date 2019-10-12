//
//  main.m
//  NSObject
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import "CFPerson.h"
#import "CFStudent.h"
@interface Person : NSObject

@property (nonatomic,assign) int age;

@end

@implementation Person



@end


int main(int argc, const char * argv[]) {
    //直接调用消息转发方法；
   // Person *person = [Person new];
   // Person *person = ((Person *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Person"), sel_registerName("new"));
    //((void (*)(id, SEL, int))(void *)objc_msgSend)((id)person, sel_registerName("setAge:"), 20);
//    objc_msgSend((id)person, @selector(setAge:), 20);
//    NSLog(@"%d",person.age);
    //NSLog((NSString *)&__NSConstantStringImpl__var_folders_2c_fj2z4v417gv4t0v7cr_6vblm0000gn_T_main_aa6b21_mi_0,((int (*)(id, SEL))(void *)objc_msgSend)((id)person, sel_registerName("age")));
    
//    类的继承关系
//    CFPerson *person = [[CFPerson alloc] init];
//    [person test];
    
    
    //实例方法和类方法的调用
    CFPerson *person = [[CFPerson alloc] init];
//    [person eating];
//    [CFPerson sleeping];
//
//    //实例->类->元类
//    ((void (*)(id,SEL))(void *)objc_msgSend)((id)person,sel_registerName("eating"));
//    ((void (*)(id,SEL))(void *)objc_msgSend)(objc_getClass("CFPerson"),sel_registerName("sleeping"));
//
    //验证实例方法是否在类对象中
//    IMP eating = class_getMethodImplementation([CFPerson class], sel_registerName("eating"));
//    eating();
//    
//    IMP sleeping = class_getMethodImplementation(objc_getMetaClass("CFPerson") , sel_registerName("sleeping"));
//    sleeping();
//    
    
    
    //跳过消息发送流程  获取 sel -> 获取 imp ->直接执行函数
    //直接调用并不会提升效率
    
    CFStudent *student = [[CFStudent alloc] init];
    SEL eatSel = @selector(studyingWithBook: inPlace:);
    IMP eatIMP = [student methodForSelector:eatSel];
    //eatIMP(student,eatSel,@"apple",@"kitchen");
    
    NSDate *begin = [NSDate date];
    for (int i = 0; i< 1000000000;i++){
       // eatIMP(student,eatSel,@"apple",@"kitchen");
    }
    NSDate *end = [NSDate date];
    NSLog(@"%f",[end timeIntervalSinceDate:begin]);
    
    return 0;
}
