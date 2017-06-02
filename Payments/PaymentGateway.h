//
//  PaymentGateway.h
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger)amt;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic,weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end
