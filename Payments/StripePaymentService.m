//
//  StripePaymentService.m
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amt;
{
    if ([self canProcessPayment]) {
        NSLog(@"Payment processed: $%ld. Thanks for using Stripe!",amt);
    } else {
        NSLog(@"Sorry, we couldn't process your payment.");
    }
}

- (BOOL)canProcessPayment;
{
    return arc4random_uniform(2);
}

@end
