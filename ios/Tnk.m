#import "Tnk.h"
#import "tnksdk.h"
#import <React/RCTLog.h>

@implementation Tnk

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(applicationStarted: (NSString *)name)
{
  RCTLogInfo(@"TnkSession applicationStarted. %@", name);
  [[TnkSession sharedInstance] applicationStarted];
}

RCT_EXPORT_METHOD(actionCompleted: (NSString *)actionName)
{
  RCTLogInfo(@"TnkSession actionCompleted. %@", actionName);
  [[TnkSession sharedInstance] actionCompleted:actionName];
}

RCT_EXPORT_METHOD(buyCompleted: (NSString *)itemName)
{
  RCTLogInfo(@"TnkSession buyCompleted. %@", itemName);
  [[TnkSession sharedInstance] buyCompleted:itemName];
}

RCT_EXPORT_METHOD(setUserAge: (NSString *)userAge)
{
  RCTLogInfo(@"TnkSession setUserAge. %d", (int) userAge);
  [[TnkSession sharedInstance] setUserAge:(int) userAge];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  NSString *tnkad_app_id = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"tnkad_app_id"];

  // Tnk 초기화
  [TnkSession initInstance:tnkad_app_id];

  // Tracking on/off
  [[TnkSession sharedInstance] setTrackingEnabled:YES];

  return YES;
}

@end
