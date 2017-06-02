//
//  PaymentGateway.h
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

/*****PAYMENT DELEGATE PROTOCOL*****/

//protocol for all payment services to conform to
@protocol PaymentDelegate <NSObject>

//process the payment amount if possible
- (void)processPaymentAmount:(NSInteger)amt;

//allow for the possibility that a payment cannot be processed
- (BOOL)canProcessPayment;

@end

/*****PAYMENT GATEWAY INTERFACE*****/

@interface PaymentGateway : NSObject

//the payment service itself, which changes based on user input (hence the delegation)
@property (nonatomic,weak) id<PaymentDelegate> paymentDelegate;

//calls the delegate's processPaymentAmount method
- (void)processPaymentAmount:(NSInteger)amount;

@end
