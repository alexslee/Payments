//
//  ApplePaymentService.h
//  Payments
//
//  Created by Alex Lee on 2017-06-02.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

- (void)processPaymentAmount:(NSInteger)amt;

- (BOOL)canProcessPayment;


@end
