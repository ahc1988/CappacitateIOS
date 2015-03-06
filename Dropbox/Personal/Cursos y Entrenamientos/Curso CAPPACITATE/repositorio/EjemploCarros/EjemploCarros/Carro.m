//
//  Carro.m
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import "Carro.h"

@implementation Carro

-(id) initConMarca:(NSString *)marca yConModelo:(NSString *)modelo yConRutaImagen:(NSString *)rutaImagen{
    if(self = [super init]){
        self.marca = marca;
        self.modelo = modelo;
        self.rutaImagen = rutaImagen;
    }
    return self;
}

@end
