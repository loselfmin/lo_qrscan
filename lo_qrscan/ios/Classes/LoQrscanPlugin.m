#import "LoQrscanPlugin.h"
#if __has_include(<lo_qrscan/lo_qrscan-Swift.h>)
#import <lo_qrscan/lo_qrscan-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "lo_qrscan-Swift.h"
#endif

@implementation LoQrscanPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLoQrscanPlugin registerWithRegistrar:registrar];
}
@end
