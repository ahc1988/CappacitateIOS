//
//  DetalleCarroViewController.m
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import "DetalleCarroViewController.h"

@interface DetalleCarroViewController ()

@end

@implementation DetalleCarroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.carro.marca;
    //[self setTitle:self.carro.marca];
    self.labelMarca.text = self.carro.marca;
    self.labelModelo.text = self.carro.modelo;
    self.imageCarro.image = [UIImage imageNamed:self.carro.rutaImagen];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
