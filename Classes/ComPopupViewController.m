//
//  ComPopupViewController.m
//  TiPopup
//
//  Created by Shive, Alex on 3/4/14.
//
//

#import "ComPopupViewController.h"

@interface ComPopupViewController ()

@end

@implementation ComPopupViewController

-(void)showController {
    
}

- (BOOL)canBecomeFirstResponder {
	return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan called");
    CGPoint tapPoint = [[touches anyObject] locationInView:self.view];
    [self becomeFirstResponder];
UIMenuController* controller = [UIMenuController sharedMenuController];
    
UIMenuItem * item1 = [[[UIMenuItem alloc] initWithTitle:@"Fish" action:@selector(fish)] autorelease];
UIMenuItem * item2 = [[[UIMenuItem alloc] initWithTitle:@"Stripes" action:@selector(stripes)] autorelease];
UIMenuItem * item3 = [[[UIMenuItem alloc] initWithTitle:@"Grass" action:@selector(grass)] autorelease];

[controller setMenuItems:[NSArray arrayWithObjects:item1, item2, item3, nil]];

[controller setTargetRect:CGRectMake(tapPoint.x, tapPoint.y, 1, 1) inView:self.view];
[controller setMenuVisible:YES animated:YES];
    NSLog(@"END");
}

- (void)fish {
}

- (void)stripes {
}

- (void)grass {
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    NSLog(@"canhasPerformAction?");
    // The selector(s) should match your UIMenuItem selector
    
    // NSLog(@"Sender: %@", sender);
    if (action == @selector(fish)) {
        return YES;
    }
    if (action == @selector(stripes)) {
        return YES;
    }
    if (action == @selector(grass)) {
        return YES;
    }
    return NO;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
