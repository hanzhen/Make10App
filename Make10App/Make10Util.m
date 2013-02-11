/*******************************************************************************
 *
 * Copyright 2013 Bess Siegal
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************/

#import "Make10Util.h"

@implementation Make10Util

/******
  TODOs
 1. iPad - 96 x 128px for each tile
 2. bonus for clearing wall
 3. move wall 1 row higher???
 4. Adv features in later paid edition 
 
 ******/
+(void) styleMenuButton:(CCMenuItemFont*)menuItem {
    
    menuItem.fontName = @"American Typewriter";
    menuItem.fontSize = 24;

}

+(void) styleToggle:(CCMenuItemFont*)menuItem {
    
    menuItem.fontName = @"American Typewriter";
    menuItem.fontSize = 32;
    
}

+(NSArray*) getMakeValuesArray {
    /*
     * 5 - 20
     */
    NSMutableArray* makeValuesArray = [[NSMutableArray alloc] init];
    for (int i = 5; i <= 20; i++) {
        [makeValuesArray addObject:[NSNumber numberWithInt:i]];
    }
    /*
     * 60
     */
    [makeValuesArray addObject:[NSNumber numberWithInt:60]];
    /*
     * 100
     */
    [makeValuesArray addObject:[NSNumber numberWithInt:100]];
    return [NSArray arrayWithArray:makeValuesArray];
}

+(NSArray*) getMultMakeValuesArray {
    /*
     * 12, 15, 16, 18, 20, 24, 30, 36, 60, 75, 100, 120, 180, 360
     */
    NSMutableArray* makeValuesArray = [[NSMutableArray alloc] init];
    [makeValuesArray addObject:[NSNumber numberWithInt:12]];
    [makeValuesArray addObject:[NSNumber numberWithInt:15]];
    [makeValuesArray addObject:[NSNumber numberWithInt:16]];
    [makeValuesArray addObject:[NSNumber numberWithInt:18]];
    [makeValuesArray addObject:[NSNumber numberWithInt:20]];
    [makeValuesArray addObject:[NSNumber numberWithInt:24]];
    [makeValuesArray addObject:[NSNumber numberWithInt:30]];
    [makeValuesArray addObject:[NSNumber numberWithInt:36]];
    [makeValuesArray addObject:[NSNumber numberWithInt:60]];
    [makeValuesArray addObject:[NSNumber numberWithInt:75]];
    [makeValuesArray addObject:[NSNumber numberWithInt:100]];
    [makeValuesArray addObject:[NSNumber numberWithInt:120]];
    [makeValuesArray addObject:[NSNumber numberWithInt:180]];
    [makeValuesArray addObject:[NSNumber numberWithInt:360]];
    return [NSArray arrayWithArray:makeValuesArray];
}

+(int) genRandomMakeValue:(int)currentMakeValue {
    NSArray* makeValuesArray = [self getMakeValuesArray];
    int randomIndex = arc4random() % [makeValuesArray count];
    int newMakeValue = [[makeValuesArray objectAtIndex:randomIndex] intValue];
    if (newMakeValue == currentMakeValue) {
        return [self genRandomMakeValue:currentMakeValue];
    }

    return newMakeValue;
}
@end
