//
//  CarrosTableViewController.m
//  EjemploCarros
//
//  Created by Arturo Henao on 27/02/15.
//  Copyright (c) 2015 Arturo Henao. All rights reserved.
//

#import "CarrosTableViewController.h"
#import "Carro.h"
#import "CarroTableViewCell.h"
#import "DetalleCarroViewController.h"

@interface CarrosTableViewController ()

@property (strong, nonatomic) NSArray * carros;

@end

@implementation CarrosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Carro * carro1 = [[Carro alloc] initConMarca:@"Chevy" yConModelo:@"Volt" yConRutaImagen:@"chevy_volt.jpg"];
    
    Carro * carro2 = [[Carro alloc] init];
    carro2.rutaImagen = @"mini_clubman.jpg";
    carro2.modelo = @"Clubman";
    carro2.marca = @"Mini";
    
    Carro * carro3 = [[Carro alloc] init];
    carro3.rutaImagen = @"smart_fortwo.jpg";
    carro3.modelo = @"Fortwo";
    carro3.marca = @"Smart";
    
    Carro * carro4 = [[Carro alloc] init];
    carro4.rutaImagen = @"toyota_venza.jpg";
    carro4.modelo = @"Venza";
    carro4.marca = @"Toyota";
    
    Carro * carro5 = [[Carro alloc] init];
    carro5.rutaImagen = @"volvo_s60.jpg";
    carro5.modelo = @"S60";
    carro5.marca = @"Volvo";
    
    self.carros = [[NSArray alloc] initWithObjects:carro1, carro2, carro3, carro4, carro5, nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.carros count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CarroTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"carroTableViewCell" forIndexPath:indexPath];
    
    Carro * carro = self.carros[indexPath.row];
    cell.labelMarca.text = carro.marca;
    cell.labelModelo.text = carro.modelo;
    cell.imageCarro.image = [UIImage imageNamed:carro.rutaImagen];
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetalleCarroViewController * detalleCarroViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"detalleCarroViewController"];
    
    detalleCarroViewController.carro = self.carros[indexPath.row];
    [self.navigationController pushViewController:detalleCarroViewController animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
