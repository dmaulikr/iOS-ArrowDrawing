/*
 Copyright 2014 Scott Logic Ltd.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

#import "SCCoreGraphicsArrowViewController.h"
#import "SCCoreGraphicsArrowView.h"

@implementation SCCoreGraphicsArrowViewController

- (UIView<SCArrowView> *)createArrowViewFrom:(CGPoint)from to:(CGPoint)to
{
    return [[SCCoreGraphicsArrowView alloc] initWithFrame:self.view.bounds from:from to:to];
}

@end
