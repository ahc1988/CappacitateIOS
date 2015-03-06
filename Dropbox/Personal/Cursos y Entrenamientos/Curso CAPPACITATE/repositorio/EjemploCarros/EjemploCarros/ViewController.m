//
//  ViewController.m
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import "ViewController.h"
#import "CarrosTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)iniciarSesion:(id)sender {
    if (![self.textFieldUsuario.text isEqualToString:@"arturo"] || ![self.textFieldContrasenia.text isEqualToString:@"1234"]) {
        //Creo el controlador de la alerta
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"Error inicio de sesión" message:@"Su nombre de usuario o contraseña es incorrecta, vuelva a intentar" preferredStyle:UIAlertControllerStyleAlert];
        
        //Creo la acción para cuando el usuario quiere cerrar la alerta
        UIAlertAction * alertOkAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        
        //Agrego la acción en el controlador de la alerta
        [alertController addAction:alertOkAction];
        
        //Presento el controlador de la alerta
        [self presentViewController:alertController animated:YES completion:nil];
        
    }else{
        CarrosTableViewController * carrosTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"carrosTableViewController"];
        [self.navigationController pushViewController:carrosTableViewController animated:YES];
    }
}
@end
