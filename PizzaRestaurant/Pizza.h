//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Abegael Jackson on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef NS_ENUM(NSInteger, PizzaSize) {
    Small,
    Medium,
    Large
};

@property (nonatomic, strong) NSArray* toppings;
@property (nonatomic) PizzaSize size;

+(PizzaSize) pizzaSize: (NSString*) pizzaString;
// - is instance meth and + is class meth, class is called on class itself, - is called on specific instance

+(NSString*) stringFromSize: (PizzaSize) pizzaSize;

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end
