LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCurrency.csv" as row
CREATE (:DimCurrency {
	CurrencyKey: toInteger(row.CurrencyKey),
	CurrencyAlternateKey: toInteger(row.CurrencyAlternateKey),
	CurrencyName: row.CurrencyName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCustomer.csv" as row
CREATE (:DimCustomer {
	CustomerKey: toInteger(row.CustomerKey),
	GeographyKey: toInteger(row.GeographyKey),
	CustomerAlternateKey: toInteger(row.CustomerAlternateKey),
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
	YearlyIncome: toFloat(row.YearlyIncome),
	TotalChildren: toInteger(row.TotalChildren),
	NumberChildrenAtHome: toInteger(row.NumberChildrenAtHome),
	EnglishEducation: row.EnglishEducation,
	SpanishEducation: row.SpanishEducation,
	FrenchEducation: row.FrenchEducation,
	EnglishOccupation: row.EnglishOccupation,
	SpanishOccupation: row.SpanishOccupation,
	FrenchOccupation: row.FrenchOccupation,
	HouseOwnerFlag: row.HouseOwnerFlag,
	NumberCarsOwned: toInteger(row.NumberCarsOwned),
	AddressLine1: row.AddressLine1,
	AddressLine2: row.AddressLine2,
	Phone: row.Phone,
	DateFirstPurchase: row.DateFirstPurchase,
	CommuteDistance: row.CommuteDistance,
	FullName: row.FullName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimDate.csv" as row
CREATE (:DimDate {
	DateKey: toInteger(row.DateKey), 
	FullDateAlternateKey: row.FullDateAlternateKey, 
	DayNumberOfWeek: toInteger(row.DayNumberOfWeek), 
	EnglishDayNameOfWeek: row.EnglishDayNameOfWeek, 
	SpanishDayNameOfWeek: row.SpanishDayNameOfWeek, 
	FrenchDayNameOfWeek: row.FrenchDayNameOfWeek, 
	DayNumberOfMonth: toInteger(row.DayNumberOfMonth), 
	DayNumberOfYear: toInteger(row.DayNumberOfYear), 
	WeekNumberOfYear: toInteger(row.WeekNumberOfYear), 
	EnglishMonthName: row.EnglishMonthName, 
	SpanishMonthName: row.SpanishMonthName, 
	FrenchMonthName: row.FrenchMonthName, 
	MonthNumberOfYear: toInteger(row.MonthNumberOfYear), 
	CalendarQuarter: toInteger(row.CalendarQuarter), 
	CalendarYear: toInteger(row.CalendarYear), 
	CalendarSemester: toInteger(row.CalendarSemester), 
	FiscalQuarter: toInteger(row.FiscalQuarter), 
	FiscalYear: toInteger(row.FiscalYear), 
	FiscalSemester: toInteger(row.FiscalSemester)
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimGeography.csv" as row
CREATE (:DimGeography {
	GeographyKey: toInteger(row.GeographyKey),
	City: row.City,
	StateProvinceCode: row.StateProvinceCode,
	StateProvinceName: row.StateProvinceName,
	CountryRegionCode: row.CountryRegionCode,
	EnglishCountryRegionName: row.EnglishCountryRegionName,
	SpanishCountryRegionName: row.SpanishCountryRegionName,
	FrenchCountryRegionName: row.FrenchCountryRegionName,
	PostalCode: row.PostalCode,
	SalesTerritoryKey: toInteger(row.SalesTerritoryKey),
	IpAddressLocator: row.IpAddressLocator
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProduct.csv" as row
CREATE (:DimProduct {
	ProductKey: toInteger(row.ProductKey),
	ProductAlternateKey: row.ProductAlternateKey,
	ProductSubcategoryKey: toInteger(row.ProductSubcategoryKey),
	WeightUnitMeasureCode: row.WeightUnitMeasureCode,
	SizeUnitMeasureCode: row.SizeUnitMeasureCode,
	EnglishProductName: row.EnglishProductName,
	SpanishProductName: row.SpanishProductName,
	FrenchProductName: row.FrenchProductName,
	StandardCost: toFloat(row.StandardCost),
	FinishedGoodsFlag: row.FinishedGoodsFlag,
	Color: row.Color,
	SafetyStockLevel: toInteger(row.SafetyStockLevel),
	ReorderPoint: toInteger(row.ReorderPoint),
	ListPrice: toFloat(row.ListPrice),
	Size: row.Size,
	SizeRange: row.SizeRange,
	Weight: toFloat(row.Weight),
	DaysToManufacture: toInteger(row.DaysToManufacture),
	ProductLine: row.ProductLine,
	DealerPrice: toFloat(row.DealerPrice),
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
	ProductCategoryKey: toInteger(row.ProductCategoryKey),
	ProductCategoryAlternateKey: toInteger(row.ProductCategoryAlternateKey),
	EnglishProductCategoryName: row.EnglishProductCategoryName,
	SpanishProductCategoryName: row.SpanishProductCategoryName,
	FrenchProductCategoryName: row.FrenchProductCategoryName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProductSubcategory.csv" as row
CREATE (:DimProductSubcategory {
	ProductSubcategoryKey: toInteger(row. ProductSubcategoryKey),
	ProductSubcategoryAlternateKey: toInteger(row.ProductSubcategoryAlternateKey),
	EnglishProductSubcategoryName: row.EnglishProductSubcategoryName,
	SpanishProductSubcategoryName: row.SpanishProductSubcategoryName,
	FrenchProductSubcategoryName: row.FrenchProductSubcategoryName,
	ProductCategoryKey: toInteger(row.ProductCategoryKey)
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimPromotion.csv" as row
CREATE (:DimPromotion {
	PromotionKey: toInteger(row.PromotionKey),
	PromotionAlternateKey: toInteger(row.PromotionAlternateKey),
	EnglishPromotionName: row.EnglishPromotionName,
	SpanishPromotionName: row.SpanishPromotionName,
	FrenchPromotionName: row.FrenchPromotionName,
	DiscountPct: toFloat(row.DiscountPct),
	EnglishPromotionType: row.EnglishPromotionType,
	SpanishPromotionType: row.SpanishPromotionType,
	FrenchPromotionType: row.FrenchPromotionType,
	EnglishPromotionCategory: row.EnglishPromotionCategory,
	SpanishPromotionCategory: row.SpanishPromotionCategory,
	FrenchPromotionCategory: row.FrenchPromotionCategory,
	StartDate: row.StartDate,
	EndDate: row.EndDate,
	MinQty: toInteger(row.MinQty),
	MaxQty: toInteger(row.MaxQty)
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimSalesTerritory.csv" as row
CREATE (:DimSalesTerritory {
	SalesTerritoryKey: toInteger(row.SalesTerritoryKey),
	SalesTerritoryAlternateKey: toInteger(row.SalesTerritoryAlternateKey),
	SalesTerritoryRegion: row.SalesTerritoryRegion,
	SalesTerritoryCountry: row.SalesTerritoryCountry,
	SalesTerritoryGroup: row.SalesTerritoryGroup
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/FactInternetSales.csv" as row
CREATE (:FactInternetSales {
	ProductKey: toInteger(row.ProductKey),
	OrderDateKey: toInteger(row.OrderDateKey),
	DueDateKey: toInteger(row.DueDateKey),
	ShipDateKey: toInteger(row.ShipDateKey),
	CustomerKey: toInteger(row.CustomerKey),
	PromotionKey: toInteger(row.PromotionKey),
	CurrencyKey: toInteger(row.CurrencyKey),
	SalesTerritoryKey: toInteger(row.SalesTerritoryKey),
	SalesOrderNumber: row.SalesOrderNumber,
	SalesOrderLineNumber: toInteger(row.SalesOrderLineNumber),
	RevisionNumber: toInteger(row.RevisionNumber),
	OrderQuantity: toInteger(row.OrderQuantity),
	UnitPrice: toFloat(row.UnitPrice),
	ExtendedAmount: toFloat(row.ExtendedAmount),
	UnitPriceDiscountPct: toFloat(row.UnitPriceDiscountPct),
	DiscountAmount: toFloat(row.DiscountAmount),
	ProductStandardCost: toFloat(row.ProductStandardCost),
	TotalProductCost: toFloat(row.TotalProductCost),
	SalesAmount: toFloat(row.SalesAmount),
	TaxAmt: toFloat(row.TaxAmt),
	Freight: toFloat(row.Freight),
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
WHERE f.OrderDateKey = d.DateKey
CREATE (f)-[:ORDER_AT]->(d);

MATCH (f:FactInternetSales),(d:DimDate)
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
