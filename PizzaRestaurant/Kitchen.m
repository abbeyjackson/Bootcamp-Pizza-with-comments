//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen



- (Pizza *)makePizzaWithSize:(Size)size toppings:(NSArray *)toppings
{
    if (self.delegate) {
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size toppings:toppings]) {
            if([self.delegate kitchenShouldUpgradeOrder:self]){
                if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                    //// must have : as it indicates there is a param, without it has zero
                    [self.delegate kitchenDidMakePizza:nil];
                }
                return [[Pizza alloc]initWithSize:Large andToppings:toppings];
            }else {
                if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
                    [self.delegate kitchenDidMakePizza:nil];
                }
                return [[Pizza alloc]initWithSize:size andToppings:toppings];
            }
        }else {
            NSLog(@"We will not make that pizza");
            return nil;
        }
    }
    
    return [[Pizza alloc]initWithSize:size andToppings:toppings];
    
}



@end
