//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Abegael Jackson on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"



@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings{
    for (NSString *pizzaToppings in toppings) {
        if ([pizzaToppings isEqualToString:@"anchovy"]) {
            return NO;
        }
    }
    return YES;
}


-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

@end
