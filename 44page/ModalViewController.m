//
//  ModalViewController.m
//  44page
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ModalViewController.h"
#import "ViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)closeModalVC:(id)sender
{
    ViewController *mainVC = (ViewController *)self.presentedViewController;
    mainVC.mainInput.text = self.nodalInput.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.nodalInput.text = self.msg;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.nodalInput resignFirstResponder];
    [super viewWillDisappear:animated];
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
