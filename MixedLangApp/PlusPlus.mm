//
//  PlusPlus.mm
//  MixedLangApp
//
//  Created by 一宮 浩教 on 2019/12/24.
//  Copyright © 2019 Hironytic. All rights reserved.
//

#import "PlusPlus.h"

@import ObjCLib1;

class PlusHoge {
private:
    int i;
public:
    PlusHoge() {
        i = 100;
    }
    
    int number() const {
        return i;
    }
};

@implementation PlusPlus

- (NSInteger)number {
    PlusHoge plusHoge = PlusHoge();
    ObjCCalculator *calc = [[ObjCCalculator alloc] initWithNumber:(NSInteger)plusHoge.number()];
    return [calc calculateWithNumber:100];
}

@end
