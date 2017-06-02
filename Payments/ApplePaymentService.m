//
//  ApplePaymentService.m
//  Payments
//
//  Created by Alex Lee on 2017-06-02.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amt;
{
    if ([self canProcessPayment]) {
        NSLog(@"Payment processed: $%ld. Thanks for using Apple Pay!",amt);
    } else {
        NSLog(@"Sorry, we couldn't process your payment.");
    }
}

- (BOOL)canProcessPayment;
{
    return arc4random_uniform(2);
}

@end
