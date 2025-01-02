--- When you've created your Azure SQL Database - use your local SSMS to connect and create these tables:

CREATE TABLE dbo.Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Birthdate NVARCHAR(50) NOT NULL,
    CustomerCategory NVARCHAR(50) NOT NULL
);

CREATE TABLE dbo.CustomerAddress (
    AddressID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES dbo.Customer(CustomerID),
    StreetName NVARCHAR(100) NOT NULL,
    Postalcode NVARCHAR(10) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    Municipality NVARCHAR(50) NOT NULL
);

CREATE TABLE dbo.CustomerContactInformation (
    ContactID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES dbo.Customer(CustomerID),
    Phone NVARCHAR(20) NOT NULL,
    Email NVARCHAR(100) NOT NULL
);

CREATE TABLE dbo.Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE dbo.Purchase (
    PurchaseID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES dbo.Customer(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES dbo.Product(ProductID),
    PurchaseDate DATE NOT NULL,
    Quantity INT NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL
);



SET IDENTITY_INSERT dbo.Product ON;

INSERT INTO dbo.Product (ProductID, ProductName, Price)
VALUES
(3001, 'Laptop', 8999.00),
(3002, 'Mouse', 1499.00),
(3003, 'Keyboard', 700.00),
(3004, 'Monitor', 120.00),
(3005, 'Desk', 5550.00),
(3006, 'Office Chair', 1500.00),
(3007, 'Printer', 3500.09),
(3008, 'Headphones', 999.00),
(3009, 'Webcam', 699.00),
(3010, 'Microphone', 999.00),
(3011, 'Router', 1200.00),
(3012, 'Modem', 2500.00),
(3013, 'Docking Station', 1500.00),
(3014, 'External SSD', 899.00),
(3015, 'USB Flash Drive', 799.00),
(3016, 'Gaming Mouse', 1300.00),
(3017, 'Gaming Keyboard', 1200.00),
(3018, 'Office Desk', 4599.00),
(3019, 'Standing Desk', 5499.00),
(3020, 'Ergonomic Chair', 8999.00),
(3021, 'Projector', 4500.00),
(3022, 'Whiteboard', 899.00),
(3023, 'Graphics Card', 6599.00),
(3024, 'CPU', 6000.00),
(3025, 'DDR5 RAM', 999.00),
(3026, 'Motherboard', 999.00),
(3027, 'Power Supply', 899.00),
(3028, 'Cooling Fan', 9999.00),
(3029, 'Case', 999.00),
(3030, 'VR Headset', 7000.00),
(3031, 'Smartphone', 9500.00),
(3032, 'Tablet', 8500.00),
(3033, 'Smartwatch', 3800.00),
(3034, 'E-Reader', 1500.99),
(3035, 'Bluetooth Speaker', 1400.00),
(3036, 'Soundbar', 2600.00),
(3037, 'Wireless Charger', 799.00),
(3038, 'Charging Cable', 150.00),
(3039, 'Surge Protector', 500.00),
(3040, 'Smart Bulb', 150.00),
(3041, 'Monitor Stand', 2000.00),
(3042, 'Mouse Pad', 399.00),
(3043, 'Hard Drive', 10000.00),
(3044, 'Software License', 800.00),
(3045, 'Antivirus Subscription', 700.00),
(3046, 'HDMI Cable', 100.00),
(3047, 'Ethernet Cable', 150.00),
(3048, 'Speaker System', 13500.00),
(3049, 'Headset', 1800.00),
(3050, 'Laptop Stand', 399.00),
(3051, 'Phone Case', 149.00),
(3052, 'Screen Protector', 99.00),
(3053, 'Fitness Tracker', 1200.00),
(3054, 'Camera', 6999.00),
(3055, 'Lens', 1200.00),
(3056, 'Tripod', 180.00),
(3057, 'Battery Pack', 399.00),
(3058, 'Projector Screen', 999.00),
(3059, 'Cable Organizer', 149.00),
(3060, 'MicroSD Card', 299.99),
(3061, 'USB Hub', 299.00),
(3062, 'Thunderbolt Cable', 499.00),
(3063, 'Docking Keyboard', 1500.00),
(3064, 'Adjustable Lamp', 699.00),
(3065, 'Portable AC', 6999.00),
(3066, 'Bluetooth Adapter', 799.00),
(3067, 'Mechanical Keyboard', 1600.00),
(3068, 'Wireless Mouse', 1200.00),
(3069, 'Monitor', 2400.00),
(3070, 'PC', 12500.00),
(3071, 'NAS Storage', 2300.00),
(3072, 'Server Rack', 3500.00),
(3073, 'Streaming Device', 2250.00),
(3074, 'Media Player', 7750.00),
(3075, 'Smart Plug', 499.00),
(3076, 'Keyboard Cover', 169.00),
(3077, 'Trackpad', 699.99),
(3078, 'Laptop Sleeve', 249.99),
(3079, 'Desk Lamp', 425.00);

SET IDENTITY_INSERT dbo.Product OFF;