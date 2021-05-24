#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSMutableArray *teams = [[NSMutableArray alloc] init];

       
       for (int i = 0; i < ratingArray.count; i++) {
           for (int j = 0; j < ratingArray.count; j++) {
               for (int k = 0; k < ratingArray.count; k++) {
                   if (i >= 0 && i < j && j < k) {
                       if ((([ratingArray[i] intValue] < [ratingArray[j] intValue]) && ([ratingArray[j] intValue] < [ratingArray[k] intValue])) || (([ratingArray[i] intValue] > [ratingArray[j] intValue]) && ([ratingArray[j] intValue] > [ratingArray[k] intValue]))){
                           
            
                           [teams addObject:@"team"];

                       }
                       
                   }
               }
           }
       }
       
       return [teams count];
}

@end
