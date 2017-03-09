LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCustomer.csv" as row
CREATE (:dimCustomer {
	customerKey: row.CustomerKey,
	customerAlternateKey: row.CustomerAlternateKey,
	name: row.FullName,
	firstName: row.FirstName,
	lastName: row.LastName,
	fullName: row.FullName,
	birthDate: row.BirthDate,
	maritalStatus: row.MaritalStatus,
	gender: row.Gender,
	emailAddress: row.EmailAddress,
	yearlyIncome: row.YearlyIncome,
	totalChildren: row.TotalChildren,
	numberChildrenAtHome: row.NumberChildrenAtHome,
	education: row.Education,
	occupation: row.Occupation,
	houseOwnerFlag: row.HouseOwnerFlag,
	numberCarsOwned: row.NumberCarsOwned,
	addressLine: row.AddressLine,
	phone: row.Phone,
	dateFirstPurchase: row.DateFirstPurchase,
	commuteDistance: row.CommuteDistance,
	countryName: row.CountryName,
	stateName: row.StateName,
	postalCode: row.PostalCode,
	city: row.City
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimDate.csv" as row
CREATE (:dimDate {
	dateKey: row.DateKey,
	fullDateAlternateKey: row.FullDateAlternateKey,
	dayNumberOfWeek: row.DayNumberOfWeek,
	dayNameOfWeek: row.DayNameOfWeek,
	dayNumberOfMonth: row.DayNumberOfMonth,
	dayNumberOfYear: row.DayNumberOfYear,
	weekNumberOfYear: row.WeekNumberOfYear,
	monthName: row.MonthName,
	monthNumberOfYear: row.MonthNumberOfYear,
	calendarQuarter: row.CalendarQuarter,
	calendarYear: row.CalendarYear,
	calendarSemester: row.CalendarSemester,
	fiscalQuarter: row.FiscalQuarter,
	fiscalYear: row.FiscalYear,
	fiscalSemester: row.FiscalSemester
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProduct.csv" as row
CREATE (:dimProduct {
	productKey: row.ProductKey,
	productAlternateKey: row.ProductAlternateKey,
	productSubcategoryKey: row.ProductSubcategoryKey,
	weightUnitMeasureCode: row.WeightUnitMeasureCode,
	sizeUnitMeasureCode: row.SizeUnitMeasureCode,
	productName: row.ProductName,
	standardCost: row.StandardCost,
	finishedGoodsFlag: row.FinishedGoodsFlag,
	color: row.Color,
	safetyStockLevel: row.SafetyStockLevel,
	reorderPoint: row.ReorderPoint,
	listPrice: row.ListPrice,
	size: row.Size,
	sizeRange: row.SizeRange,
	weight: row.Weight,
	daysToManufacture: row.DaysToManufacture,
	productLine: row.ProductLine,
	dealerPrice: row.DealerPrice,
	class: row.Class,
	style: row.Style,
	modelName: row.ModelName,
	description: row.Description,
	startDate: row.StartDate,
	endDate: row.EndDate
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimCurrency.csv" as row
CREATE (:dimCurrency {
	currencyKey: row.CurrencyKey,
	currencyAlternateKey: row.CurrencyAlternateKey,
	currencyName: row.CurrencyName
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimPromotion.csv" as row
CREATE (:dimPromotion {
	promotionKey: row.PromotionKey,
	promotionAlternateKey: row.PromotionAlternateKey,
	promotionName: row.PromotionName,
	discountPct: row.DiscountPct,
	promotionType: row.PromotionType,
	promotionCategory: row.PromotionCategory,
	startDate: row.StartDate,
	endDate: row.EndDate,
	minQty: row.MinQty,
	maxQty: row.MaxQty
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimSalesTerritory.csv" as row
CREATE (:dimSalesTerritory {
	salesTerritoryKey: row.SalesTerritoryKey,
	salesTerritoryAlternateKey: row.SalesTerritoryAlternateKey,
	salesTerritoryRegion: row.SalesTerritoryRegion,
	salesTerritoryCountry: row.SalesTerritoryCountry,
	salesTerritoryGroup: row.SalesTerritoryGroup
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/FactInternetSales.csv" as row
CREATE (:factInternetSales {
	productKey: row.ProductKey,
	orderDateKey: row.OrderDateKey,
	dueDateKey: row.DueDateKey,
	shipDateKey: row.ShipDateKey,
	customerKey: row.CustomerKey,
	promotionKey: row.PromotionKey,
	currencyKey: row.CurrencyKey,
	salesTerritoryKey: row.SalesTerritoryKey,
	salesOrderNumber: row.SalesOrderNumber,
	salesOrderLineNumber: row.SalesOrderLineNumber,
	revisionNumber: row.RevisionNumber,
	orderQuantity: toInt(row.OrderQuantity),
	unitPrice: toFloat(row.UnitPrice),
	extendedAmount: toFloat(row.ExtendedAmount),
	unitPriceDiscountPct: row.UnitPriceDiscountPct,
	discountAmount: row.DiscountAmount,
	productStandardCost: toFloat(row.ProductStandardCost),
	totalProductCost: toFloat(row.TotalProductCost),
	salesAmount: toFloat(row.SalesAmount),
	taxAmt: toFloat(row.TaxAmt),
	freight: toFloat(row.Freight),
	carrierTrackingNumber: row.CarrierTrackingNumber,
	customerPONumber: row.CustomerPONumber
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProductSubcategory.csv" as row
CREATE (:dimProductSubcategory {
	productSubcategoryKey: row. ProductSubcategoryKey,
	productSubcategoryAlternateKey: row.ProductSubcategoryAlternateKey,
	englishProductSubcategoryName: row.EnglishProductSubcategoryName,
	spanishProductSubcategoryName: row.SpanishProductSubcategoryName,
	frenchProductSubcategoryName: row.FrenchProductSubcategoryName,
	productCategoryKey: row.ProductCategoryKey
});

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/hmiguim/AdventureWorksCycle/master/DimProductCategory.csv" as row
CREATE (:dimProductCategory {
	productCategoryKey: row.ProductCategoryKey,
	productCategoryAlternateKey: row.ProductCategoryAlternateKey,
	englishProductCategoryName: row.EnglishProductCategoryName,
	spanishProductCategoryName: row.SpanishProductCategoryName,
	frenchProductCategoryNam: row.FrenchProductCategoryName
});


// Create indexes for faster lookup
CREATE INDEX ON :dimCustomer(customerKey);
CREATE INDEX ON :dimDate(dateKey);
CREATE INDEX ON :dimCurrency(currencyKey);
CREATE INDEX ON :dimProduct(productKey);
CREATE INDEX ON :dimPromotion(promotionKey);
CREATE INDEX ON :dimSalesTerritory(salesTerritoryKey);
CREATE INDEX ON :dimProductSubcategory(productSubcategoryKey);
CREATE INDEX ON :dimProductCategory(productCategoryKey);

// Create relationships between nodes
MATCH (prod:dimProduct),(prodsub:dimProductSubcategory)
WHERE prod.productSubcategoryKey = prodsub.productSubcategoryKey
CREATE (prod)-[:SUBCATEGORY]->(prodsub);

MATCH (prodsub:dimProductSubcategory),(cat:dimProductCategory)
WHERE prodsub.productCategoryKey = cat.productCategoryKey
CREATE (prodsub)-[:CATEGORY]->(cat);

MATCH (f:factInternetSales),(d:dimDate)
WHERE f.orderDateKey = d.dateKey
CREATE (f)-[:ORDER_AT]->(d);

MATCH (f:factInternetSales),(d:dimDate)
WHERE f.dueDateKey = d.dateKey
CREATE (f)-[:DUE_AT]->(d);

MATCH (f:factInternetSales),(d:dimDate)
WHERE f.shipDateKey = d.dateKey
CREATE (f)-[:SHIP_AT]->(d);

MATCH (f:factInternetSales),(c:dimCustomer)
WHERE f.customerKey = c.customerKey
CREATE (f)-[:CUSTOMER]->(c);

MATCH (f:factInternetSales),(p:dimPromotion)
WHERE f.promotionKey = p.promotionKey
CREATE (f)-[:PROMOTION]->(p);

MATCH (f:factInternetSales),(p:dimProduct)
WHERE f.productKey = p.productKey
CREATE (f)-[:PRODUCT]->(p);

MATCH (f:factInternetSales),(c:dimCurrency)
WHERE f.currencyKey = c.currencyKey
CREATE (f)-[:CURRENCY]->(c);

MATCH (f:factInternetSales),(s:dimSalesTerritory)
WHERE f.salesTerritoryKey = s.salesTerritoryKey
CREATE (f)-[:TERRITORY]->(s);
