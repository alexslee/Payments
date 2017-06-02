//
//  main.m
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        //create a random # between 100 and 1000
        NSInteger amount = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at acme.com. Your total today is $%ld. Please select your payment method. 1: Paypal, 2: Stripe, 3: Amazon",amount);
        
        [paymentGateway processPaymentAmount:amount];
    }
    return 0;
}