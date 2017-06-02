//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Alex Lee on 2017-06-01.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

- (void)processPaymentAmount:(NSInteger)amt;

@end
