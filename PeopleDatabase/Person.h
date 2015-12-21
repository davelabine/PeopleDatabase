//
//  Person.h
//  PeopleDatabase
//
//  Created by David LaBine on 12/21/15.
//  Copyright © 2015 David LaBine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
  NSString *firstName;
  NSString *lastName;
  int age;
}
  - (void)enterInfo;
  - (void)printInfo;
@end
