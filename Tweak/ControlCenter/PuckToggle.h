#import <UIKit/UIKit.h>
#import <ControlCenterUIKit/CCUIToggleModule.h>
#import <Cephei/HBPreferences.h>

@interface PuckToggle : CCUIToggleModule {
  BOOL _selected;
}
@property(nonatomic, retain)HBPreferences* preferences;
@end
