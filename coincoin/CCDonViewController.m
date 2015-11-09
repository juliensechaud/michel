//
//  CCDonViewController.m
//  coincoin
//
//  Created by Julien SECHAUD on 08/11/2015.
//  Copyright © 2015 Moana et Archibald. All rights reserved.
//

#import "CCDonViewController.h"

@interface CCDonViewController () <UITextFieldDelegate>

@end

@implementation CCDonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Donner";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
