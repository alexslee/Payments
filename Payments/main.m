//
//  main.m
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        
        
        //create a random # between 100 and 1000
        NSInteger amount = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at acme.com. Your total today is $%ld. Please select your payment method. 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay",amount);
        
        char str[255];
        fgets(str,255,stdin);
        
        NSString *input = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
        NSInteger selection = [input integerValue];
        
        switch (selection) {
            case 1:
                paymentGateway.paymentDelegate = paypal;
                break;
                
            case 2:
                paymentGateway.paymentDelegate = stripe;
                break;
            
            case 3:
                paymentGateway.paymentDelegate = amazon;
                break;
            
            default:
                NSLog(@"Didn't recognize input, defaulting to Paypal.");
                paymentGateway.paymentDelegate = paypal;
                break;
        }
        
        [paymentGateway processPaymentAmount:amount];
    }
    return 0;
}
