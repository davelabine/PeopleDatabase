//
//  main.m
//  PeopleDatabase
//
//  Created by David LaBine on 11/16/15.
//  Copyright © 2015 David LaBine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do {
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        } while(response == 'y');
        
        NSLog(@"Number of people in the database: %li", [people count]);
        for (Person *onePerson in people) {
            [onePerson printInfo];
        }
    }
    return 0;
}
