//
//  ViewController.m
//  kxmenu
//
//  Created by Kolyvan on 17.05.13.
//  Copyright (c) 2013 Konstantin Bukreev. All rights reserved.
//

#import "ViewController.h"
#import "KxMenu.h"

@interface ViewController ()
@end

@implementation ViewController {
    
    UIButton *_btn1;
    UIButton *_btn2;
    UIButton *_btn3;
    UIButton *_btn4;
    UIButton *_btn5;
    UIButton *_btn6;
    UIButton *_btn7;
}

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
    }
    return self;
}

- (void) loadView
{
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    
    self.view = [[UIView alloc] initWithFrame:frame];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    const CGFloat W = self.view.bounds.size.width;
    const CGFloat H = self.view.bounds.size.height;
    
    _btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn1.frame = CGRectMake(5, 5, 100, 50);
    [_btn1 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn1 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];
    
    _btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn2.frame = CGRectMake(5, H - 55, 100, 50);
    [_btn2 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn2 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn2];
    
    _btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn3.frame = CGRectMake(W - 105, 5, 100, 50);
    [_btn3 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn3 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn3];
    
    _btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn4.frame = CGRectMake(W - 105, H - 55, 100, 50);
    [_btn4 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn4 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn4];
    
    _btn5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn5.frame = CGRectMake(5, (H-50) * 0.5, 100, 50);
    [_btn5 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn5 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn5];
    
    _btn6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn6.frame = CGRectMake(W - 105, (H-50) * 0.5, 100, 50);
    [_btn6 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn6 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn6];
    
    _btn7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn7.frame = CGRectMake((W - 100)* 0.5, (H-50) * 0.5, 100, 50);
    [_btn7 setTitle:@"Click me" forState:UIControlStateNormal];
    [_btn7 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn7];

    //[KxMenu setTintColor: [UIColor colorWithRed:15/255.0f green:97/255.0f blue:33/255.0f alpha:1.0]];
    //[KxMenu setTitleFont:[UIFont systemFontOfSize:14]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    const CGFloat W = self.view.bounds.size.width;
    const CGFloat H = self.view.bounds.size.height;
    
    _btn1.frame = CGRectMake(5, 5, 100, 50);
    _btn2.frame = CGRectMake(5, H - 55, 100, 50);
    _btn3.frame = CGRectMake(W - 105, 5, 100, 50);
    _btn4.frame = CGRectMake(W - 105, H - 55, 100, 50);
    _btn5.frame = CGRectMake(5, (H-50) * 0.5, 100, 50);
    _btn6.frame = CGRectMake(W - 105, (H-50) * 0.5, 100, 50);
    _btn7.frame = CGRectMake((W - 100)* 0.5, (H-50) * 0.5, 100, 50);
}

- (void)showMenu:(UIButton *)sender
{
    NSArray *menuItems =
    @[
      
      [KxMenuItem menuItem:@"ACTION MENU 1234456"
                     image:nil
                    target:nil
                    action:NULL],
            
      [KxMenuItem menuItem:@"Share this"
                     image:[UIImage imageNamed:@"action_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Check this menu"
                     image:nil
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Reload page"
                     image:[UIImage imageNamed:@"reload"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Search"
                     image:[UIImage imageNamed:@"search_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Go home"
                     image:[UIImage imageNamed:@"home_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      ];
    
    KxMenuItem *first = menuItems[0];
    first.foreColor = [UIColor colorWithRed:47/255.0f green:112/255.0f blue:225/255.0f alpha:1.0];
    first.alignment = NSTextAlignmentCenter;
    
    [KxMenu showMenuInView:self.view
                  fromRect:sender.frame
                 menuItems:menuItems];
}

- (void) pushMenuItem:(id)sender
{
    NSLog(@"%@", sender);
}

@end
