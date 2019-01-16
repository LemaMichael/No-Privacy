#line 1 "/Users/michael/Desktop/ADDICTION/ADDICTION/ADDICTION.xm"



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


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class TabGridPageControl; @class TabGridViewController; @class PopupMenuTableViewController; 
static void (*_logos_orig$_ungrouped$TabGridViewController$setCurrentPage$animated$)(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, _Bool); static void _logos_method$_ungrouped$TabGridViewController$setCurrentPage$animated$(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST, SEL, unsigned long long, _Bool); static void (*_logos_orig$_ungrouped$TabGridViewController$recordActionSwitchingToPage$)(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static void _logos_method$_ungrouped$TabGridViewController$recordActionSwitchingToPage$(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST, SEL, unsigned long long); static void (*_logos_orig$_ungrouped$TabGridPageControl$setSelectedPage$animated$)(_LOGOS_SELF_TYPE_NORMAL TabGridPageControl* _LOGOS_SELF_CONST, SEL, unsigned long long, _Bool); static void _logos_method$_ungrouped$TabGridPageControl$setSelectedPage$animated$(_LOGOS_SELF_TYPE_NORMAL TabGridPageControl* _LOGOS_SELF_CONST, SEL, unsigned long long, _Bool); static void (*_logos_orig$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL PopupMenuTableViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath *); static void _logos_method$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PopupMenuTableViewController* _LOGOS_SELF_CONST, SEL, id, NSIndexPath *); 

#line 21 "/Users/michael/Desktop/ADDICTION/ADDICTION/ADDICTION.xm"

static void _logos_method$_ungrouped$TabGridViewController$setCurrentPage$animated$(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, _Bool arg2) {
    if (arg1 == 0) {
        _logos_orig$_ungrouped$TabGridViewController$setCurrentPage$animated$(self, _cmd, 1, YES);
    } else {
        _logos_orig$_ungrouped$TabGridViewController$setCurrentPage$animated$(self, _cmd, arg1, arg2);
    }
}

static void _logos_method$_ungrouped$TabGridViewController$recordActionSwitchingToPage$(_LOGOS_SELF_TYPE_NORMAL TabGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    if (arg1 == 0) {
        [self setCurrentPageAndPageControlSelectedPage:1 animated:NO];
        [self setCurrentPage:1 animated:NO];
    } else {
        _logos_orig$_ungrouped$TabGridViewController$recordActionSwitchingToPage$(self, _cmd, arg1);
    }
}





static void _logos_method$_ungrouped$TabGridPageControl$setSelectedPage$animated$(_LOGOS_SELF_TYPE_NORMAL TabGridPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, _Bool arg2) {
    if (arg1 == 0) {
        _logos_orig$_ungrouped$TabGridPageControl$setSelectedPage$animated$(self, _cmd, 1, YES);
    } else {
        _logos_orig$_ungrouped$TabGridPageControl$setSelectedPage$animated$(self, _cmd, arg1, arg2);
    }

}





static void _logos_method$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PopupMenuTableViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, NSIndexPath * arg2) {
   
    
    if (arg2.section == 0 && arg2.row == 2) {
        
        return;
    } else {
        _logos_orig$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$(self, _cmd, arg1, arg2);
    }
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TabGridViewController = objc_getClass("TabGridViewController"); MSHookMessageEx(_logos_class$_ungrouped$TabGridViewController, @selector(setCurrentPage:animated:), (IMP)&_logos_method$_ungrouped$TabGridViewController$setCurrentPage$animated$, (IMP*)&_logos_orig$_ungrouped$TabGridViewController$setCurrentPage$animated$);MSHookMessageEx(_logos_class$_ungrouped$TabGridViewController, @selector(recordActionSwitchingToPage:), (IMP)&_logos_method$_ungrouped$TabGridViewController$recordActionSwitchingToPage$, (IMP*)&_logos_orig$_ungrouped$TabGridViewController$recordActionSwitchingToPage$);Class _logos_class$_ungrouped$TabGridPageControl = objc_getClass("TabGridPageControl"); MSHookMessageEx(_logos_class$_ungrouped$TabGridPageControl, @selector(setSelectedPage:animated:), (IMP)&_logos_method$_ungrouped$TabGridPageControl$setSelectedPage$animated$, (IMP*)&_logos_orig$_ungrouped$TabGridPageControl$setSelectedPage$animated$);Class _logos_class$_ungrouped$PopupMenuTableViewController = objc_getClass("PopupMenuTableViewController"); MSHookMessageEx(_logos_class$_ungrouped$PopupMenuTableViewController, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$PopupMenuTableViewController$tableView$didSelectRowAtIndexPath$);} }
#line 67 "/Users/michael/Desktop/ADDICTION/ADDICTION/ADDICTION.xm"
