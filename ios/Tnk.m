#import "Tnk.h"
#import "tnksdk.h"
#import <React/RCTLog.h>

@implementation Tnk

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(applicationStarted: (NSString *)name)
{
  RCTLogInfo(@"TNKAD TnkSession applicationStarted. %@", name);
  dispatch_async(dispatch_get_main_queue(), ^{
    [[TnkSession sharedInstance] applicationStarted];
  });
}

RCT_EXPORT_METHOD(actionCompleted: (NSString *)actionName)
{
  RCTLogInfo(@"TNKAD TnkSession actionCompleted. %@", actionName);
  dispatch_async(dispatch_get_main_queue(), ^{
    [[TnkSession sharedInstance] actionCompleted:actionName];
  });
}

RCT_EXPORT_METHOD(buyCompleted: (NSString *)itemName)
{
  RCTLogInfo(@"TNKAD TnkSession buyCompleted. %@", itemName);
  dispatch_async(dispatch_get_main_queue(), ^{
    [[TnkSession sharedInstance] buyCompleted:itemName];
  });
}

RCT_EXPORT_METHOD(setUserAge: (NSString *)userAge)
{
  RCTLogInfo(@"TNKAD TnkSession setUserAge. %d", (int) userAge);
  dispatch_async(dispatch_get_main_queue(), ^{
    [[TnkSession sharedInstance] setUserAge:(int) userAge];
  });
}

RCT_EXPORT_METHOD(init: (NSString *)name)
{
  RCTLogInfo(@"TNK INIT. %@", name);
  NSString *tnkad_app_id = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"tnkad_app_id"];
  RCTLogInfo(@"TNKAD tnkad_app_id: %@", tnkad_app_id);

  dispatch_async(dispatch_get_main_queue(), ^{
    // init
    [TnkSession initInstance:tnkad_app_id];

    [[TnkSession sharedInstance] applicationStarted];

    // Tracking on/off
    [[TnkSession sharedInstance] setTrackingEnabled:YES];
  });
}

@end
