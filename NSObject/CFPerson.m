//
//  CFPerson.m
//  NSObject
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#import "CFPerson.h"
#import <objc/runtime.h>
#import <objc/message.h>
//oc 中的类结构

//oc 对象模型

//https://www.jianshu.com/p/9ca86389c1cd 类的继承关系图。

@implementation CFPerson

- (void)test {
    NSLog(@"Person实例地址%@",self);
    //类对象
    Class myClass = objc_getClass("CFPerson");
    NSLog(@"Person类对象地址%p",myClass);
    //元类对象
    Class metaClass = objc_getMetaClass("CFPerson");
    NSLog(@"Person元类对象地址%p",metaClass);
    //父类对象
    
    Class superClass = class_getSuperclass(myClass);
    NSLog(@"%@,%p",superClass,superClass);
    
    //nsobject实例对象
    NSObject *obj = [NSObject new];
    NSLog(@"%@",obj);
    
    //类对象
    Class objClass = objc_getClass("NSObject");
    NSLog(@"%p",objClass);
    
    //元类对象
    Class objMetaClass = objc_getMetaClass("NSObject");
    NSLog(@"%p",metaClass);
    //NSobject的父类地址是null。
    Class objSuperClass = class_getSuperclass(objClass);
    NSLog(@"%@,%p",objSuperClass,objSuperClass);
    
    //实例的isa指针指向自己的类对象
    NSLog(@"Person实例的isa:%p",object_getClass(self));
    //类对象的isa指针指向自己的元类
    NSLog(@"Person类的isa:%p",object_getClass(myClass));
    //person 的元类的isa指向nsobject的isa。
    NSLog(@"Person元类的isa:%p",object_getClass(metaClass));
       
    NSLog(@"NSObject实例的isa:%p",object_getClass(obj));
    
    NSLog(@"NSObject类的isa:%p",object_getClass(objClass));
    //NSOBJECT  元类的指针指向自己
    NSLog(@"NSObject元类的isa:%p",object_getClass(objMetaClass));
}


- (void)eating{
    NSLog(@"我吃了");
}

+ (void)sleeping {
    NSLog(@"我睡了");
}

@end
