-- warehouses
insert into warehouses (id, name, address) values (1, 'Perindopril Erbumine', '13691 Stang Pass');
insert into warehouses (id, name, address) values (2, 'Biaxin', '493 Moland Parkway');
insert into warehouses (id, name, address) values (3, 'Infant Dextrose', '1 Eagle Crest Hill');
insert into warehouses (id, name, address) values (4, 'sleep aid', '906 Shopko Pass');
insert into warehouses (id, name, address) values (5, 'BURNING DIARRHEA', '42282 Jenifer Road');
insert into warehouses (id, name, address) values (6, 'Ciprofloxacin', '47 Barby Trail');
insert into warehouses (id, name, address) values (7, 'Triamcinolone Acetonide', '7 Buena Vista Court');

-- warehouse_blocks
insert into warehouse_blocks (id, warehouse_id, capacity) values (1, 3, 10.22);
insert into warehouse_blocks (id, warehouse_id, capacity) values (2, 7, 87.63);
insert into warehouse_blocks (id, warehouse_id, capacity) values (3, 2, 18.23);
insert into warehouse_blocks (id, warehouse_id, capacity) values (4, 6, 92.35);
insert into warehouse_blocks (id, warehouse_id, capacity) values (5, 6, 1.67);
insert into warehouse_blocks (id, warehouse_id, capacity) values (6, 5, 84.44);
insert into warehouse_blocks (id, warehouse_id, capacity) values (7, 5, 93.48);
insert into warehouse_blocks (id, warehouse_id, capacity) values (8, 6, 71.58);
insert into warehouse_blocks (id, warehouse_id, capacity) values (9, 4, 62.74);
insert into warehouse_blocks (id, warehouse_id, capacity) values (10, 1, 39.78);
insert into warehouse_blocks (id, warehouse_id, capacity) values (11, 2, 60.85);
insert into warehouse_blocks (id, warehouse_id, capacity) values (12, 5, 25.02);
insert into warehouse_blocks (id, warehouse_id, capacity) values (13, 4, 16.39);
insert into warehouse_blocks (id, warehouse_id, capacity) values (14, 1, 25.48);
insert into warehouse_blocks (id, warehouse_id, capacity) values (15, 1, 10.1);
insert into warehouse_blocks (id, warehouse_id, capacity) values (16, 2, 14.89);
insert into warehouse_blocks (id, warehouse_id, capacity) values (17, 6, 88.48);
insert into warehouse_blocks (id, warehouse_id, capacity) values (18, 4, 14.61);
insert into warehouse_blocks (id, warehouse_id, capacity) values (19, 6, 95.12);
insert into warehouse_blocks (id, warehouse_id, capacity) values (20, 6, 87.16);
insert into warehouse_blocks (id, warehouse_id, capacity) values (21, 6, 17.99);
insert into warehouse_blocks (id, warehouse_id, capacity) values (22, 6, 66.76);
insert into warehouse_blocks (id, warehouse_id, capacity) values (23, 3, 95.28);
insert into warehouse_blocks (id, warehouse_id, capacity) values (24, 1, 54.17);
insert into warehouse_blocks (id, warehouse_id, capacity) values (25, 5, 59.55);

-- fuel_types
insert into fuel_types (id, code, name) values (1, 80, 'Diesel Oil');
insert into fuel_types (id, code, name) values (2, 95, 'Fuel Oil');
insert into fuel_types (id, code, name) values (3, 82, 'Biodiesel');
insert into fuel_types (id, code, name) values (4, 1, 'Hydrogen');
insert into fuel_types (id, code, name) values (5, 50, 'Natural gas');

-- deliveries
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (1, 1, 1, true, '11/27/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (2, 2, 5, true, '12/1/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (3, 7, 4, true, '12/28/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (4, 2, 3, false, '11/15/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (5, 1, 1, false, '9/21/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (6, 3, 1, true, '10/6/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (7, 5, 1, true, '3/7/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (8, 5, 4, true, '7/20/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (9, 1, 4, true, '1/27/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (10, 5, 4, true, '1/5/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (11, 3, 4, false, '4/10/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (12, 4, 4, true, '12/4/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (13, 1, 3, true, '5/18/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (14, 2, 1, true, '4/6/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (15, 7, 3, true, '9/6/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (16, 5, 2, true, '5/7/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (17, 1, 2, true, '1/20/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (18, 2, 5, false, '6/25/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (19, 6, 2, true, '7/1/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (20, 4, 1, false, '12/16/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (21, 1, 5, true, '12/27/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (22, 5, 4, true, '11/6/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (23, 2, 4, false, '9/25/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (24, 2, 2, false, '3/22/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (25, 4, 2, false, '8/26/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (26, 3, 5, true, '2/8/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (27, 7, 3, false, '5/5/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (28, 4, 3, true, '8/6/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (29, 6, 2, false, '2/1/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (30, 1, 5, false, '4/10/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (31, 4, 3, true, '5/4/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (32, 6, 5, false, '7/26/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (33, 1, 1, true, '10/28/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (34, 4, 1, false, '5/20/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (35, 2, 2, false, '2/14/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (36, 1, 1, true, '7/31/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (37, 3, 1, true, '2/2/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (38, 4, 1, true, '3/11/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (39, 7, 3, true, '6/20/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (40, 1, 5, true, '4/13/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (41, 2, 3, true, '12/24/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (42, 6, 2, true, '5/20/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (43, 2, 1, false, '12/15/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (44, 6, 4, true, '4/9/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (45, 7, 4, true, '10/25/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (46, 1, 1, false, '1/7/2022');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (47, 2, 4, true, '10/19/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (48, 7, 1, true, '4/9/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (49, 2, 1, true, '3/27/2021');
insert into deliveries (id, warehouse_id, fuel_type_id, completed, datetime) values (50, 2, 3, false, '6/7/2021');

-- roles
insert into roles (id, name, permission_level) values (1, 'Estimator', 3);
insert into roles (id, name, permission_level) values (2, 'Project Manager', 4);
insert into roles (id, name, permission_level) values (3, 'Engineer', 1);
insert into roles (id, name, permission_level) values (4, 'Director', 5);

-- managers
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (1, 'Tanner', 'Brandi', 'tbrandi0@alibaba.com', '378-999-0991', 1, 1);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (2, 'Margo', 'Gilogly', 'mgilogly1@forbes.com', '393-164-3697', 2, 2);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (3, 'Tildie', 'Callaghan', 'tcallaghan2@unicef.org', '482-773-0975', 3, 3);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (4, 'Jackqueline', 'Dowse', 'jdowse3@ebay.co.uk', '983-642-4745', 4, 4);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (5, 'William', 'Trunby', 'wtrunby4@uol.com.br', '503-886-1566', 1, 5);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (6, 'Mathias', 'Peasee', 'mpeasee5@redcross.org', '194-740-4298', 1, 6);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (7, 'Filberto', 'Belchem', 'fbelchem6@weibo.com', '602-493-7402', 1, 7);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (8, 'Viki', 'Tellenbrok', 'vtellenbrok7@mtv.com', '738-446-4810', 2, 7);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (9, 'Nolly', 'Edson', 'nedson8@privacy.gov.au', '310-799-9570', 2, 3);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (10, 'Noe', 'Perrington', 'nperrington9@pagesperso-orange.fr', '230-398-1613', 1, 1);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (11, 'Daniella', 'Monckton', 'dmoncktona@forbes.com', '465-535-4089', 1, 1);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (12, 'Georgine', 'Valett', 'gvalettb@altervista.org', '652-832-6201', 1, 2);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (13, 'Ian', 'Warbeys', 'iwarbeysc@theglobeandmail.com', '518-788-6811', 3, 4);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (14, 'Jeannie', 'Jowers', 'jjowersd@sitemeter.com', '975-902-1007', 4, 6);
insert into managers (id, firstname, lastname, email, phone_number, role_id, warehouse_id) values (15, 'Codee', 'Cawcutt', 'ccawcutte@disqus.com', '509-986-9234', 4, 5);
