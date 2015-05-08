//
//  RestaurantManager.h
//  PizzaRestaurant
//
//  Created by Abegael Jackson on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;
@class Kitchen;


@protocol RestaurantManager <NSObject>

@required
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;
// method is called kitchen:shouldMakePizzaOfSize:toppings:, this shows it takes 3 parameters, of type Kitchen*, Size, and NSArray
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
