#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *tempString1 = [[NSMutableString alloc] initWithString: string1];
    NSMutableString *tempString2 = [[NSMutableString alloc] initWithString: string2];
    NSMutableString *resultString = [[NSMutableString alloc] init];
        
    while ([tempString1 length] != 0 && [tempString2 length] != 0) {
        
        
        if ([tempString1 UTF8String][0] <= [tempString2 UTF8String][0]) {
            [resultString appendString: [tempString1 substringToIndex: 1]];
            [tempString1 deleteCharactersInRange:NSMakeRange(0, 1)];
        } else {
            [resultString appendString: [tempString2 substringToIndex: 1]];
            [tempString2 deleteCharactersInRange:NSMakeRange(0, 1)];
        }
    }
        
    if (tempString1.length == 0) [resultString appendString:tempString2];
        else [resultString appendString:tempString1];
        
    return resultString;
    
}

@end
