//
//  ViewController.h
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textFieldUsuario;
@property (strong, nonatomic) IBOutlet UITextField *textFieldContrasenia;
- (IBAction)iniciarSesion:(id)sender;

@end

