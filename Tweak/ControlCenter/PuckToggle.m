#import "PuckToggle.h"

BOOL enabled = NO;

@implementation PuckToggle

- (id)init {

    self = [super init];

    self.preferences = [[HBPreferences alloc] initWithIdentifier:@"love.litten.puckpreferences"];
    [[self preferences] registerBool:&enabled default:NO forKey:@"Enabled"];

    if (enabled) return self;
    else return nil;

}

- (UIImage *)iconGlyph {
  
    return [UIImage imageNamed:@"toggleIcon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
  
}

- (UIColor *)selectedColor {

	return [UIColor clearColor];

}

- (BOOL)isSelected {

    return _selected;

}

- (void)setSelected:(BOOL)selected {

    _selected = selected;

    [super refreshState];

    if (_selected) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"puckShutdownNotification" object:nil];
        [self setSelected:NO];
    }

}

@end
