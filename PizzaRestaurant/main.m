//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Pizza.h"
#import "Kitchen.h"
#import "GoodManager.h"
#import "BadManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        GoodManager* myGoodManager = [[GoodManager alloc] init];
        // GoodManager - class and the type of the variable MyGoodManager
        // = anything btwn [] are msgs and on the L inside the [] is who is receiving the msg
        // in the message you may include parameters
        BadManager* myBadManager = [[BadManager alloc] init];
        
        restaurantKitchen.delegate = myBadManager;
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSMutableArray *commandWords = [[inputString componentsSeparatedByString:@" "] mutableCopy];
            // NSMuta.. is the type and class of *cW
            
            
            NSString *pizzaSizeCommand = [commandWords objectAtIndex:0];
            // sending cW a msg, msg is obj.., parameter is "0"
            
            PizzaSize myPizzaSize = [Pizza pizzaSize:pizzaSizeCommand];
            [commandWords removeObjectAtIndex:0];
            
            Pizza *pizza1 = [restaurantKitchen makePizzaWithSize:myPizzaSize toppings:commandWords];
            // *pizza1 is not actually the object, it is just the pointer that points to it
            
            NSString *pizzaStringSize = [Pizza stringFromSize:pizza1.size];
            
            if (pizza1 != nil) {
                NSLog(@"A pizza of size %@ with toppings %@ was made", pizzaStringSize, commandWords);
            } else {
                NSLog(@"No pizza was made");
            }
            
        }

    }
    return 0;
}

