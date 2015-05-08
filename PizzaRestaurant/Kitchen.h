//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantManager.h"

@class Pizza;

@interface Kitchen : NSObject

@property (nonatomic, assign) id<RestaurantManager> delegate;

- (Pizza *)makePizzaWithSize:(Size)size toppings:(NSArray *)toppings;



@end
