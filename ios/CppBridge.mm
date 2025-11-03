#import "CppBridge.h"
#import "../cpp/Logic.hpp"   // <-- обновлённый путь к C++ файлу

@implementation NSObject (CppBridge)
@end

NSString* getCppMessage(void) {
    std::string msg = getMessageFromCpp();
    return [NSString stringWithUTF8String:msg.c_str()];
}
