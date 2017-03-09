LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCurrency.csv" as row
CREATE (:DimCurrency {
	CurrencyKey: row.CurrencyKey,
	CurrencyAlternateKey: row.CurrencyAlternateKey,
	CurrencyName: row.CurrencyName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCustomer.csv" as row
CREATE (:DimCustomer {
	CustomerKey: row.CustomerKey,
	GeographyKey: row.GeographyKey,
	CustomerAlternateKey: row.CustomerAlternateKey,
	Title: row.Title,
	FirstName: row.FirstName,
	MiddleName: row.MiddleName,
	LastName: row.LastName,
	NameStyle: row.NameStyle,
	BirthDate: row.BirthDate,
	MaritalStatus: row.MaritalStatus,
	Suffix: row.Suffix,
	Gender: row.Gender,
	EmailAddress: row.EmailAddress,
	YearlyIncome: row.YearlyIncome,
	TotalChildren: row.TotalChildren,
	NumberChildrenAtHome: row.NumberChildrenAtHome,
	EnglishEducation: row.EnglishEducation,
	SpanishEducation: row.SpanishEducation,
	FrenchEducation: row.FrenchEducation,
	EnglishOccupation: row.EnglishOccupation,
	SpanishOccupation: row.SpanishOccupation,
	FrenchOccupation: row.FrenchOccupation,
	HouseOwnerFlag: row.HouseOwnerFlag,
	NumberCarsOwned: row.NumberCarsOwned,
	AddressLine1: row.AddressLine1,
	AddressLine2: row.AddressLine2,
	Phone: row.Phone,
	DateFirstPurchase: row.DateFirstPurchase,
	CommuteDistance: row.CommuteDistance,
	FullName: row.FullName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimDate.csv" as row
CREATE (:DimDate {
	DateKey: row.DateKey, 
	FullDateAlternateKey: row.FullDateAlternateKey, 
	DayNumberOfWeek: row.DayNumberOfWeek, 
	EnglishDayNameOfWeek: row.EnglishDayNameOfWeek, 
	SpanishDayNameOfWeek: row.SpanishDayNameOfWeek, 
	FrenchDayNameOfWeek: row.FrenchDayNameOfWeek, 
	DayNumberOfMonth: row.DayNumberOfMonth, 
	DayNumberOfYear: row.DayNumberOfYear, 
	WeekNumberOfYear: row.WeekNumberOfYear, 
	EnglishMonthName: row.EnglishMonthName, 
	SpanishMonthName: row.SpanishMonthName, 
	FrenchMonthName: row.FrenchMonthName, 
	MonthNumberOfYear: row.MonthNumberOfYear, 
	CalendarQuarter: row.CalendarQuarter, 
	CalendarYear: row.CalendarYear, 
	CalendarSemester: row.CalendarSemester, 
	FiscalQuarter: row.FiscalQuarter, 
	FiscalYear: row.FiscalYear, 
	FiscalSemester: row.FiscalSemester
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimGeography.csv" as row
CREATE (:DimGeography {
	GeographyKey: row.GeographyKey,
	City: row.City,
	StateProvinceCode: row.StateProvinceCode,
	StateProvinceName: row.StateProvinceName,
	CountryRegionCode: row.CountryRegionCode,
	EnglishCountryRegionName: row.EnglishCountryRegionName,
	SpanishCountryRegionName: row.SpanishCountryRegionName,
	FrenchCountryRegionName: row.FrenchCountryRegionName,
	PostalCode: row.PostalCode,
	SalesTerritoryKey: row.SalesTerritoryKey,
	IpAddressLocator: row.IpAddressLocator
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProduct.csv" as row
CREATE (:DimProduct {
	ProductKey: row.ProductKey,
	ProductAlternateKey: row.ProductAlternateKey,
	ProductSubcategoryKey: row.ProductSubcategoryKey,
	WeightUnitMeasureCode: row.WeightUnitMeasureCode,
	SizeUnitMeasureCode: row.SizeUnitMeasureCode,
	EnglishProductName: row.EnglishProductName,
	SpanishProductName: row.SpanishProductName,
	FrenchProductName: row.FrenchProductName,
	StandardCost: row.StandardCost,
	FinishedGoodsFlag: row.FinishedGoodsFlag,
	Color: row.Color,
	SafetyStockLevel: row.SafetyStockLevel,
	ReorderPoint: row.ReorderPoint,
	ListPrice: row.ListPrice,
	Size: row.Size,
	SizeRange: row.SizeRange,
	Weight: row.Weight,
	DaysToManufacture: row.DaysToManufacture,
	ProductLine: row.ProductLine,
	DealerPrice: row.DealerPrice,
	Class: row.Class,
	Style: row.Style,
	ModelName: row.ModelName,
	EnglishDescription: row.EnglishDescription,
	StartDate: row.StartDate,
	EndDate: row.EndDate,
	Status: row.Status
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProductCategory.csv" as row
CREATE (:DimProductCategory {
	ProductCategoryKey: row.ProductCategoryKey,
	ProductCategoryAlternateKey: row.ProductCategoryAlternateKey,
	EnglishProductCategoryName: row.EnglishProductCategoryName,
	SpanishProductCategoryName: row.SpanishProductCategoryName,
	FrenchProductCategoryNam: row.FrenchProductCategoryName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProductSubcategory.csv" as row
CREATE (:DimProductSubcategory {
	ProductSubcategoryKey: row. ProductSubcategoryKey,
	ProductSubcategoryAlternateKey: row.ProductSubcategoryAlternateKey,
	EnglishProductSubcategoryName: row.EnglishProductSubcategoryName,
	SpanishProductSubcategoryName: row.SpanishProductSubcategoryName,
	FrenchProductSubcategoryName: row.FrenchProductSubcategoryName,
	ProductCategoryKey: row.ProductCategoryKey
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimPromotion.csv" as row
CREATE (:DimPromotion {
	PromotionKey: row.PromotionKey,
	PromotionAlternateKey: row.PromotionAlternateKey,
	EnglishPromotionName: row.EnglishPromotionName,
	SpanishPromotionName: row.SpanishPromotionName,
	FrenchPromotionName: row.FrenchPromotionName,
	DiscountPct: row.DiscountPct,
	EnglishPromotionType: row.EnglishPromotionType,
	SpanishPromotionType: row.SpanishPromotionType,
	FrenchPromotionType: row.FrenchPromotionType,
	EnglishPromotionCategory: row.EnglishPromotionCategory,
	SpanishPromotionCategory: row.SpanishPromotionCategory,
	FrenchPromotionCategory: row.FrenchPromotionCategory,
	StartDate: row.StartDate,
	EndDate: row.EndDate,
	MinQty: row.MinQty,
	MaxQty: row.MaxQty
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimSalesTerritory.csv" as row
CREATE (:DimSalesTerritory {
	SalesTerritoryKey: row.SalesTerritoryKey,
	SalesTerritoryAlternateKey: row.SalesTerritoryAlternateKey,
	SalesTerritoryRegion: row.SalesTerritoryRegion,
	SalesTerritoryCountry: row.SalesTerritoryCountry,
	SalesTerritoryGroup: row.SalesTerritoryGroup
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/FactInternetSales.csv" as row
CREATE (:FactInternetSales {
	ProductKey: row.ProductKey,
	OrderDateKey: row.OrderDateKey,
	DueDateKey: row.DueDateKey,
	ShipDateKey: row.ShipDateKey,
	CustomerKey: row.CustomerKey,
	PromotionKey: row.PromotionKey,
	CurrencyKey: row.CurrencyKey,
	SalesTerritoryKey: row.SalesTerritoryKey,
	SalesOrderNumber: row.SalesOrderNumber,
	SalesOrderLineNumber: row.SalesOrderLineNumber,
	RevisionNumber: row.RevisionNumber,
	OrderQuantity: row.OrderQuantity,
	UnitPrice: row.UnitPrice,
	ExtendedAmount: row.ExtendedAmount,
	UnitPriceDiscountPct: row.UnitPriceDiscountPct,
	DiscountAmount: row.DiscountAmount,
	ProductStandardCost: row.ProductStandardCost,
	TotalProductCost: row.TotalProductCost,
	SalesAmount: row.SalesAmount,
	TaxAmt: row.TaxAmt,
	Freight: row.Freight,
	CarrierTrackingNumber: row.CarrierTrackingNumber,
	CustomerPONumber: row.CustomerPONumber,
	OrderDate: row.OrderDate,
	DueDate: row.DueDate,
	ShipDate: row.ShipDate
});

// Create indexes for faster lookup
CREATE INDEX ON :DimCustomer(CustomerKey);
CREATE INDEX ON :DimDate(DateKey);
CREATE INDEX ON :DimCurrency(CurrencyKey);
CREATE INDEX ON :DimProduct(ProductKey);
CREATE INDEX ON :DimPromotion(PromotionKey);
CREATE INDEX ON :DimSalesTerritory(SalesTerritoryKey);
CREATE INDEX ON :DimProductSubcategory(ProductSubcategoryKey);
CREATE INDEX ON :DimProductCategory(ProductCategoryKey);
CREATE INDEX ON :DimGeography(GeographyKey);

// Create relationships between nodes
MATCH (geo:DimGeography),(territory:DimSalesTerritory)
WHERE geo.SalesTerritoryKey = territory.SalesTerritoryKey
CREATE (geo)-[:GEO_SALES_TERRITORY]->(territory);

MATCH (customer:DimCustomer),(geo:DimGeography)
WHERE customer.GeographyKey = geo.GeographyKey
CREATE (customer)-[:CUSTOMER_GEO]->(geo);

MATCH (prod:DimProduct),(prodsub:DimProductSubcategory)
WHERE prod.ProductSubcategoryKey = prodsub.ProductSubcategoryKey
CREATE (prod)-[:SUBCATEGORY]->(prodsub);

MATCH (prodsub:DimProductSubcategory),(cat:DimProductCategory)
WHERE prodsub.ProductCategoryKey = cat.ProductCategoryKey
CREATE (prodsub)-[:CATEGORY]->(cat);

MATCH (f:FactInternetSales),(d:DimDate)
WHERE f.orderDateKey = d.DateKey
CREATE (f)-[:ORDER_AT]->(d);

MATCH (f:FactInternetSales),(d:dimDate)
WHERE f.DueDateKey = d.DateKey
CREATE (f)-[:DUE_AT]->(d);

MATCH (f:FactInternetSales),(d:DimDate)
WHERE f.ShipDateKey = d.DateKey
CREATE (f)-[:SHIP_AT]->(d);

MATCH (f:FactInternetSales),(c:DimCustomer)
WHERE f.CustomerKey = c.CustomerKey
CREATE (f)-[:CUSTOMER]->(c);

MATCH (f:FactInternetSales),(p:DimPromotion)
WHERE f.PromotionKey = p.PromotionKey
CREATE (f)-[:PROMOTION]->(p);

MATCH (f:FactInternetSales),(p:DimProduct)
WHERE f.ProductKey = p.ProductKey
CREATE (f)-[:PRODUCT]->(p);

MATCH (f:FactInternetSales),(c:DimCurrency)
WHERE f.CurrencyKey = c.CurrencyKey
CREATE (f)-[:CURRENCY]->(c);

MATCH (f:FactInternetSales),(s:DimSalesTerritory)
WHERE f.SalesTerritoryKey = s.SalesTerritoryKey
CREATE (f)-[:TERRITORY]->(s);
