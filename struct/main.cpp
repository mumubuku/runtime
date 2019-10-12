//
//  main.cpp
//  struct
//
//  Created by ZHAO on 2019/10/10.
//  Copyright © 2019 123. All rights reserved.
//

#include <iostream>

struct Student {
    int no;
    char name[20];
    int *age;
    Student(){
        no = 114;
        strcpy(name,"lilei");
        age = new int(20);
    }
};

//定义一个继承的结构体
struct Student1:Student {
    
};
//定义一个结构体变量stu2
struct:Student {
    
}stu2;

struct Student3:Student{
    
}stu3;

//定义一个结构体，并取别名
typedef struct Student4:Student {
    
}Stu4;


int main(int argc, const char * argv[]) {
    // insert code here...
    
    
//    struct Student1 stu1;
//    printf("%d\n",stu1.no);
//    for (int i =0; i<5; i++) {
//        printf("%c",*(stu1.name+i));
//    }
//    printf("\n%d",stu1.age);
   
    //只声名一个变量；
   // printf("%d",stu2.no);
    
    //声名一个别名的
    Stu4 stu4;
    struct Student4 stu44;
//    printf("%d\n",stu4.no);
//    printf("%d\n",stu44.no);
    
    //结构体指针；
    Stu4 *pStu4 = &stu4;
   // printf("%d",pStu4->no);
    
    //结构体位域； 8位= 1字节
    struct Teacher{
        unsigned int a:1;
        unsigned int b:2;
        unsigned int c:3;
        
    }tc,*ptc;
    //打印结果为4字节；
   // printf("%d",sizeof(Teacher));
    ptc = &tc;
    ptc->a = 1;
    ptc->b = 3;
    ptc->c = 5;
    printf("%d\n",ptc->a);
    printf("%d\n",ptc->b);
    printf("%d\n",ptc->c);
    return 0;
}
