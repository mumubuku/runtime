//
//  ViewController.m
//  Runtime
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#import "ViewController.h"

#define PI 3.14159264     //自动识别类型

//宏定义方法；
#define swap(x,y)\
x=x+y;\
y=x-y;\
x=x-y\

//宏定义一段代码
#define LOG \
int a = 3;\
int b = 4;\
printf("%d",a);\
printf("%d",b)

#ifndef A
#define A 1
#endif

#define B 2
#undef A  //取消宏定义A




@interface ViewController ()

@end

@implementation ViewController
int getMax(int i, int j){
    return  i>j?i:j;
}

int *getMin(int i, int j){
    int result = i>j?j:i;
    int *pResult = &result;
    return pResult;
}




- (void)viewDidLoad {
    [super viewDidLoad];
   // [self point];
   // printf("%.9lf",PI);
    
    int x = 10;
    int y = 20;
   // swap(x, y);
    //printf("%d",x);
  // printf("%d",y);
    
   // LOG;
    
    
    
    
}

- (void)point {
    //普通指针
//    int a = 4;
//    int *pa = &a;
//    printf("a=%d\n",a);
//    printf("&a=%d\n",&a);
//    printf("pa=%d\n",pa);
//    printf("a=%d\n",*pa);//指针取值；
//
//    //指针的指针
//    int **ppa = &pa;
//    printf("&pa=%d\n",&pa);
//    printf("ppa=%d\n",ppa);
//    printf("*ppa=%d\n",**ppa);
    
    
    //数组指针
//    char b [] = "hello";
//    //b代表数组首个元素的地址；
//    char *pb = b;
//    printf("b=%d\n",b);
//    printf("pb=%d\n",pb);
//    //查看买个元素的地址
////    for (int i =0; i<5; i++) {
////        printf("%p\n",&b[i]);
////    }
//    //3.用指针取值
//    for (int i =0; i<5; i++) {
//        printf("%c\n",*(b+i));
//    }
    
    //函数指针
//
//    int (*p1)(int i,int j);
//    p1 = getMax;
//    int result = p1(3,5);
//    //printf("%d",result);
//
//    //返回指针的函数
//    int *p2 = getMin(3, 5);
//    printf("%d",*p2);
    //位运算
}



@end
