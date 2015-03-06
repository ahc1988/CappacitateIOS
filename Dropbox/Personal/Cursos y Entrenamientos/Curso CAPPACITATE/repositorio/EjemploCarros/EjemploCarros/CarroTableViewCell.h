//
//  CarroTableViewCell.h
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarroTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageCarro;
@property (strong, nonatomic) IBOutlet UILabel *labelMarca;
@property (strong, nonatomic) IBOutlet UILabel *labelModelo;

@end
