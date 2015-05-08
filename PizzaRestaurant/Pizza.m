//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Abegael Jackson on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


+(PizzaSize) pizzaSize: (NSString*) pizzaString{
    
    if ([pizzaString isEqualToString: @"small"]) {
        return Small;
    } else if ([pizzaString isEqualToString: @"medium"]){
        return Medium;
    }else
        return Large;
}


+(NSString*) stringFromSize: (PizzaSize) pizzaSize{
    
    if (pizzaSize == Small) {
        return @"Small";
    } else if (pizzaSize == Medium){
        return @"Medium";
    }else
        return @"Large";
}

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        self.toppings = toppings;
        self.size = size;
    }
    return self;
}



@end
