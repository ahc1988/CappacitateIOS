//
//  DetalleCarroViewController.h
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carro.h"

@interface DetalleCarroViewController : UIViewController

@property (strong, nonatomic) Carro * carro;

@property (strong, nonatomic) IBOutlet UIImageView *imageCarro;
@property (strong, nonatomic) IBOutlet UILabel *labelMarca;
@property (strong, nonatomic) IBOutlet UILabel *labelModelo;

@end
