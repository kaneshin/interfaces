#import <Foundation/Foundation.h>

@protocol Animal
@optional
- (NSString *)sounds;
@end

@interface Cat : NSObject <Animal>
@property (nonatomic, strong) NSString *name;
@end

@implementation Cat
- (NSString *)sounds {
    return @"Meow";
}
@end

void call(NSObject<Animal> *a) {
    printf("%s\n", [[a sounds] UTF8String]);
}

int main(int argc, char *argv[])
{
    Cat *cat = [Cat new];
    cat.name = @"NyanCat";
    call(cat);
    return 0;
}

