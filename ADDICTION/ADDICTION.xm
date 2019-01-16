// See http://iphonedevwiki.net/index.php/Logos


#import <UIKit/UIKit.h>
@interface TabGridPageControl : UIControl
- (void)setSelectedPage:(unsigned long long)arg1 animated:(_Bool)arg2;
@end

@interface TabGridViewController : UIViewController
- (void)setCurrentPageAndPageControlSelectedPage:(unsigned long long)arg1 animated:(_Bool)arg2;
- (void)setCurrentPage:(unsigned long long)arg1 animated:(_Bool)arg2;
@end

@interface ChromeTableViewController : UITableViewController
@end

@interface PopupMenuTableViewController : ChromeTableViewController
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(NSIndexPath *)arg2;
@end

%hook TabGridViewController
- (void)setCurrentPage:(unsigned long long)arg1 animated:(_Bool)arg2 {
    if (arg1 == 0) {
        %orig(1, YES);
    } else {
        %orig;
    }
}

- (void)recordActionSwitchingToPage:(unsigned long long)arg1 {
    if (arg1 == 0) {
        [self setCurrentPageAndPageControlSelectedPage:1 animated:NO];
        [self setCurrentPage:1 animated:NO];
    } else {
        %orig;
    }
}
%end



%hook TabGridPageControl
- (void)setSelectedPage:(unsigned long long)arg1 animated:(_Bool)arg2 {
    if (arg1 == 0) {
        %orig(1, YES);
    } else {
        %orig;
    }

}
%end



%hook PopupMenuTableViewController
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(NSIndexPath *)arg2 {
   
    //NSLog(@"Section: %d, Row: %d", arg2.section, arg2.row);
    if (arg2.section == 0 && arg2.row == 2) {
        // Not today.
        return;
    } else {
        %orig;
    }
}
%end
