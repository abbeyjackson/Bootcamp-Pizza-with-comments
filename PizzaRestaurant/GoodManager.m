//
//  GoodManager.m
//  PizzaRestaurant
//
//  Created by Abegael Jackson on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "GoodManager.h"

@implementation GoodManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;
{
    return YES;
}


-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}



@end
