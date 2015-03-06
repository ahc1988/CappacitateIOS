//
//  Carro.h
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject

@property (strong, nonatomic) NSString * rutaImagen;
@property (strong, nonatomic) NSString * marca;
@property (strong, nonatomic) NSString * modelo;

-(id) initConMarca:(NSString *)marca yConModelo:(NSString *)modelo yConRutaImagen:(NSString *)rutaImagen;

@end
