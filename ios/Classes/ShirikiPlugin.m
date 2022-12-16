#import "ShirikiPlugin.h"
#if __has_include(<shiriki/shiriki-Swift.h>)
#import <shiriki/shiriki-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "shiriki-Swift.h"
#endif

@implementation ShirikiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShirikiPlugin registerWithRegistrar:registrar];
}
@end
