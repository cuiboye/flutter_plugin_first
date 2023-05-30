#import "TitleBarPlugin.h"
#if __has_include(<title_bar/title_bar-Swift.h>)
#import <title_bar/title_bar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "title_bar-Swift.h"
#endif

@implementation TitleBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTitleBarPlugin registerWithRegistrar:registrar];
}
@end
