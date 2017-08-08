using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace Endeca2MySql
{
    class Program
    {
        private static void InsertValuesInFilterGroup(List<FilterGroup> filterGroupList)
        {
            filterGroupList.Add(new FilterGroup(1, "Drink Type"));
            filterGroupList.Add(new FilterGroup(2, "Country"));
            filterGroupList.Add(new FilterGroup(3, "Grape Variety"));
            filterGroupList.Add(new FilterGroup(4, "Price Per Bottle"));
            filterGroupList.Add(new FilterGroup(5, "Awards"));
            filterGroupList.Add(new FilterGroup(6, "Special Diet"));
            filterGroupList.Add(new FilterGroup(7, "More Options"));
            filterGroupList.Add(new FilterGroup(8, "Region"));
            filterGroupList.Add(new FilterGroup(9, "Style"));
            filterGroupList.Add(new FilterGroup(10, "Brand"));
            filterGroupList.Add(new FilterGroup(11, "Producer"));
            filterGroupList.Add(new FilterGroup(12, "Stopper"));
            filterGroupList.Add(new FilterGroup(13, "Vinery"));
            filterGroupList.Add(new FilterGroup(14, "ABV"));
        }

        private static void InsertValuesInFilter(List<Filter> filterList)
        {
            //Drink Type
            filterList.Add(new Filter(1, "Champagne", "champagne", "", 0, 1, 0, true));
            filterList.Add(new Filter(2, "Fortified", "fortified", "", 0, 1, 0, true));
            filterList.Add(new Filter(3, "Mixed Cases", "mixed", "", 0, 1, 0, true));
            filterList.Add(new Filter(4, "Port", "port", "", 0, 1, 0, true));
            filterList.Add(new Filter(5, "Red Wine", "redwine", "", 0, 1, 0, true));
            filterList.Add(new Filter(6, "Rose Wine", "rosewine", "", 0, 1, 0, true));
            filterList.Add(new Filter(7, "Sherry", "sherry", "", 0, 1, 0, true));
            filterList.Add(new Filter(8, "Sparkling", "sparkling", "", 0, 1, 0, true));
            filterList.Add(new Filter(9, "White Wine", "whitewine", "", 0, 1, 0, true));

            //Country
            filterList.Add(new Filter(10, "France", "fr", "", 0, 2, 0, true));
            filterList.Add(new Filter(11, "Australia", "au", "", 0, 2, 0, true));
            filterList.Add(new Filter(12, "Italy", "it", "", 0, 2, 0, true));
            filterList.Add(new Filter(13, "Spain", "es", "", 0, 2, 0, true));
            filterList.Add(new Filter(14, "USA", "us", "", 0, 2, 0, true));
            filterList.Add(new Filter(15, "South Africa", "sa", "", 0, 2, 0, true));
            filterList.Add(new Filter(16, "Chile", "ch", "", 0, 2, 0, true));
            filterList.Add(new Filter(17, "Argentina ", "ag", "", 0, 2, 0, true));
            filterList.Add(new Filter(18, "China ", "ch", "", 0, 2, 0, true));
            filterList.Add(new Filter(19, "England ", "gb", "", 0, 2, 0, true));
            filterList.Add(new Filter(20, "Germany ", "de", "", 0, 2, 0, true));
            filterList.Add(new Filter(21, "Greece", "gr", "", 0, 2, 0, true));
            filterList.Add(new Filter(22, "Hungary ", "hu", "", 0, 2, 0, true));
            filterList.Add(new Filter(23, "Israel ", "is", "", 0, 2, 0, true));
            filterList.Add(new Filter(24, "New Zealand ", "nz", "", 0, 2, 0, true));
            filterList.Add(new Filter(25, "Portugal ", "pt", "", 0, 2, 0, true));

            //Grape Variety
            filterList.Add(new Filter(26, "Carignan", "carignan", "", 0, 3, 0, true));
            filterList.Add(new Filter(27, "Chardonnay", "chardonnay", "", 0, 3, 0, true));
            filterList.Add(new Filter(28, "Sauvignon Blanc", "sauvignonblanc", "", 0, 3, 0, true));
            filterList.Add(new Filter(29, "Shiraz", "shiraz", "", 0, 3, 0, true));
            filterList.Add(new Filter(30, "Syrah", "syrah", "", 0, 3, 0, true));
            filterList.Add(new Filter(68, "Pinot Noir", "pinotnoir", "", 0, 3, 0, true));
            filterList.Add(new Filter(69, "Merlot", "merlot", "", 0, 3, 0, true));
            filterList.Add(new Filter(70, "Grenache", "grenache", "", 0, 3, 0, true));
            filterList.Add(new Filter(71, "Blend", "blend", "", 0, 3, 0, true));
            filterList.Add(new Filter(72, "Pinot Meunier", "pinotmeunier", "", 0, 3, 0, true));
            filterList.Add(new Filter(73, "Tempranillo", "tempranillo", "", 0, 3, 0, true));
            filterList.Add(new Filter(74, "Riesling", "riesling", "", 0, 3, 0, true));
            filterList.Add(new Filter(75, "Garnacha", "garnacha", "", 0, 3, 0, true));
            filterList.Add(new Filter(76, "Zinfandel", "zinfandel", "", 0, 3, 0, true));
            filterList.Add(new Filter(77, "Colombard", "colombard", "", 0, 3, 0, true));
            filterList.Add(new Filter(78, "White Grape Blend", "whitegrapeBlend", "", 0, 3, 0, true));
            filterList.Add(new Filter(79, "Glera", "glera", "", 0, 3, 0, true));
            filterList.Add(new Filter(80, "Pinot Blanco", "pinotblanco", "", 0, 3, 0, true));
            filterList.Add(new Filter(81, "Malbec", "malbec", "", 0, 3, 0, true));
            filterList.Add(new Filter(82, "Mourvèdre", "mourvedre", "", 0, 3, 0, true));
            filterList.Add(new Filter(83, "Pignoletto", "pignoletto", "", 0, 3, 0, true));
            filterList.Add(new Filter(84, "Cabernet Sauvignon", "cabernetsauvignon", "", 0, 3, 0, true));
            filterList.Add(new Filter(85, "Pinot Grigio", "pinotgrigio", "", 0, 3, 0, true));
            filterList.Add(new Filter(86, "Sémillon", "semillon", "", 0, 3, 0, true));
            filterList.Add(new Filter(87, "Macabeo", "macabeo", "", 0, 3, 0, true));
            filterList.Add(new Filter(88, "Parellada", "parellada", "", 0, 3, 0, true));
            filterList.Add(new Filter(89, "Xarello", "xarello", "", 0, 3, 0, true));
            filterList.Add(new Filter(90, "Sauvignon Gris", "sauvignongris", "", 0, 3, 0, true));

            //Awards
            filterList.Add(new Filter(31, "Bronze", "bronze", "", 0, 5, 0, true));
            filterList.Add(new Filter(32, "Gold", "gold", "", 0, 5, 0, true));
            filterList.Add(new Filter(33, "Silver", "silver", "", 0, 5, 0, true));

            //Special Diet
            filterList.Add(new Filter(34, "FineWines", "finewine", "", 0, 6, 0, true));
            filterList.Add(new Filter(35, "Kosher", "kosher", "", 0, 6, 0, true));
            filterList.Add(new Filter(36, "Organic", "organic", "", 0, 6, 0, true));
            filterList.Add(new Filter(37, "Vegan", "vegan", "", 0, 6, 0, true));
            filterList.Add(new Filter(38, "Vegeterian", "vegetarian", "", 0, 6, 0, true));

            //Region
            filterList.Add(new Filter(52, "California", "californiaR", "", 0, 8, 0, true));
            filterList.Add(new Filter(53, "Central Valley", "centralvalleyR", "", 0, 8, 0, true));
            filterList.Add(new Filter(54, "Champagne", "champagneR", "", 0, 8, 0, true));
            filterList.Add(new Filter(55, "Coastal Region", "coastalR", "", 0, 8, 0, true));
            filterList.Add(new Filter(56, "Emilia-Romagna", "emiliaRomagnaR", "", 0, 8, 0, true));
            filterList.Add(new Filter(57, "Languedoc-Roussillon", "LanguedocroussillonR", "", 0, 8, 0, true));
            filterList.Add(new Filter(58, "Marlborough", "marlboroughR", "", 0, 8, 0, true));
            filterList.Add(new Filter(59, "Mosel-Saar-Ruwer", "moselsaarruwerR", "", 0, 8, 0, true));
            filterList.Add(new Filter(60, "Rapel", "rapelr", "", 0, 8, 0, true));
            filterList.Add(new Filter(61,"Rioja","riojar","",0,8,0, true));
            filterList.Add(new Filter(62, "South Eastern Australia", "southeasternaustriar", "", 0, 8, 0, true));
            filterList.Add(new Filter(63, "South Island", "southislandr", "", 0, 8, 0, true));
            filterList.Add(new Filter(64, "Trentino-Alto Adige", "trentiloaltoadiger", "", 0, 8, 0, true));
            filterList.Add(new Filter(65, "Veneto", "venetor", "", 0, 8, 0, true));
            filterList.Add(new Filter(66, "Vin de France", "vindefrancer", "", 0, 8, 0, true));
            filterList.Add(new Filter(67, "Western Cape", "westercaper", "", 0, 8, 0, true));

            //Style
            filterList.Add(new Filter(91, "Medium Dry", "mediumdry", "", 0, 9, 0, true));
            filterList.Add(new Filter(92, "Medium Bodied", "mediumbodied", "", 0, 9, 0, true));
            filterList.Add(new Filter(93, "Medium Sweet", "mediumsweet", "", 0, 9, 0, true));
            filterList.Add(new Filter(94, "Medium", "medium", "", 0, 9, 0, true));
            filterList.Add(new Filter(95, "Full or Robust", "fullrobust", "", 0, 9, 0, true));
            filterList.Add(new Filter(96, "Dry", "dry", "", 0, 9, 0, true));
            filterList.Add(new Filter(97, "Light and Fruity", "lightandfruity", "", 0, 9, 0, true));

            //FilterBrand
            filterList.Add(new Filter(101, "Brancott Estate", "Brancottestate", "", 0, 10, 0, true));
            filterList.Add(new Filter(102, "First Cape", "firstcape", "", 0, 10, 0, true));
            filterList.Add(new Filter(103, "Barefoot", "barefoot", "", 0, 10, 0, true));
            filterList.Add(new Filter(104, "Castelmaure", "castelmaure", "", 0, 10, 0, true));
            filterList.Add(new Filter(105, "Jackson Estate", "jacksonestate", "", 0, 10, 0, true));
            filterList.Add(new Filter(106, "Casillero del Diablo", "casillerodeldiablo", "", 0, 10, 0, true));
            filterList.Add(new Filter(107, "Tesco", "tesco", "", 0, 10, 0, true));
            filterList.Add(new Filter(108, "Castillo de Albai", "castillodealbai", "", 0, 10, 0, true));
            filterList.Add(new Filter(109, "Lagunilla", "lagunilla", "", 0, 10, 0, true));
            filterList.Add(new Filter(110, "Gallo Family Vineyards", "gallofamilyvineyards", "", 0, 10, 0, true));
            filterList.Add(new Filter(111, "Faustino Rivero Ulecia", "faustinoriveroulecia", "", 0, 10, 0, true));
            filterList.Add(new Filter(112, "Blossom Hill", "blossomhill", "", 0, 10, 0, true));
            filterList.Add(new Filter(113, "Blue Nun", "bluenun", "", 0, 10, 0, true));
            filterList.Add(new Filter(114, "Dino", "dino", "", 0, 10, 0, true));
            filterList.Add(new Filter(115, "Bellingham", "bellingham", "", 0, 10, 0, true));
            filterList.Add(new Filter(116, "Grand Conseiller", "grandconseiller", "", 0, 10, 0, true));
            filterList.Add(new Filter(117, "Black Tower", "blacktower", "", 0, 10, 0, true));
            filterList.Add(new Filter(118, "Balfour", "balfour", "", 0, 10, 0, true));
            filterList.Add(new Filter(119, "Eisberg", "Eisberg", "", 0, 10, 0, true));
            filterList.Add(new Filter(120, "Rosewater Park", "rosewaterpark", "", 0, 10, 0, true));
            filterList.Add(new Filter(121, "Cono Sur Bicicleta", "conosurbicicleta", "", 0, 10, 0, true));
            filterList.Add(new Filter(122, "Catalonia", "cataloniaR", "", 0, 8, 0, true));
            filterList.Add(new Filter(123, "Freixenet", "freixenet", "", 0, 10, 0, true));

            //FilterStopper
            filterList.Add(new Filter(98, "Screwcap", "screwcap", "", 0, 12, 0, true));
            filterList.Add(new Filter(99, "Natural Cork", "naturalcork", "", 0, 12, 0, true));
            filterList.Add(new Filter(100, "Other", "otherStopper", "", 0, 12, 0, true));


            //FilterABV
            filterList.Add(new Filter(39, "0.0", "0.0", "", 0, 14, 0, true));
            filterList.Add(new Filter(40, "5.5", "5.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(41, "9.5", "9.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(42, "10", "10", "", 0, 14, 0, true));
            filterList.Add(new Filter(43, "10.5", "10.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(44, "11", "11", "", 0, 14, 0, true));
            filterList.Add(new Filter(45, "11.5", "11.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(46, "12", "12", "", 0, 14, 0, true));
            filterList.Add(new Filter(47, "12.5", "12.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(48, "13", "13", "", 0, 14, 0, true));
            filterList.Add(new Filter(49, "13.5", "13.5", "", 0, 14, 0, true));
            filterList.Add(new Filter(50, "14", "14", "", 0, 14, 0, true));
            filterList.Add(new Filter(51, "14.5", "14.5", "", 0, 14, 0, true));
        }

        private static void InsertFilterAndFilterProduct(List<Filter> filterList, int filterGroupId, 
                                                   string valueToFind, ref int counterFilter,
                                                   int productId, List<FilterProduct> filterProductList )
        {
            var i = 0;
            var encontrado= false;

            while (encontrado == false && i < filterList.Count)
            {
                if (filterGroupId == filterList[i].FilterGroupId && filterList[i].Name == valueToFind.Trim())
                {
                    encontrado = true;
                }
                else
                {
                    i++;
                }
            }
            if (encontrado == false)
            {
                filterList.Add(new Filter(++counterFilter, valueToFind, valueToFind.Replace(" ", ""), "", 0, filterGroupId, 0, false));
                filterProductList.Add(new FilterProduct(productId, counterFilter, false));
            }
            else
            {
                filterProductList.Add(new FilterProduct(productId, i, false));
            }
            
        }

        private static void WriteProductsToFile(List<Product> productList)
        {
            System.IO.StreamWriter file = new System.IO.StreamWriter("products.txt" + DateTime.UtcNow.Ticks, false);

            foreach (var elem in productList)
            {
                file.WriteLine(elem.Id + ";" + elem.Description + ";" + elem.History + ";" + elem.Tpnb);
            }

            file.Close();
        }

        private static void WriteFiltersToFile(List<Filter> filterList )
        {
            System.IO.StreamWriter file = new System.IO.StreamWriter("filters.txt" + DateTime.UtcNow.Ticks, false);

            foreach (var elem in filterList)
            {
                if (!elem.FromFile)
                {
                    file.WriteLine(elem.Id + ";" + elem.Name + ";" + elem.Value + ";" + elem.FilterGroupId);
                }
            }

            file.Close();
        }

        private static void WriteFiltersProductToFile(List<FilterProduct> filterProductList)
        {
            System.IO.StreamWriter file = new System.IO.StreamWriter("FiltersProducts.txt" + DateTime.UtcNow.Ticks, false);

            foreach (var elem in filterProductList)
            {
                if (!elem.FromFile)
                {
                    file.WriteLine(elem.FilterId + ";" + elem.ProductId);
                }
            }

            file.WriteLine("");

            file.Close();
        }

        static void Main(string[] args)
        {
            int counterFilter = 124;
            int counterProduct = 1;

            var productList = new List<Product>();
            var filterGroupList = new List<FilterGroup>();
            var filterList = new List<Filter>();
            var filterProductList = new List<FilterProduct>();

            InsertValuesInFilterGroup(filterGroupList);

            InsertValuesInFilter(filterList);

            var lineCounter = 0;
            string line;

            var file = new System.IO.StreamReader(@"WineEndeca.txt");

            var newProduct = new Product(); ;
            while ((line = file.ReadLine()) != null)
            {
                if (line.Contains(" Record"))
                {
                    if (lineCounter != 0)
                    {
                        productList.Add(newProduct);
                        newProduct = new Product();
                    }
                    newProduct.Id = counterProduct++;
                }
                else
                {
                
                    var partsOfLine = line.Split(':');
                    switch (partsOfLine[0])
                    {
                        case "P_Description":
                            newProduct.Description = partsOfLine[1];
                            break;
                        case "P_History":
                            newProduct.History = partsOfLine[1];
                            break;
                        case "P_Images":
                            newProduct.Images = partsOfLine[1];
                            break;
                        case "P_NumberOfItemsInCase":
                            newProduct.NumberItemsInCase = Convert.ToInt32(partsOfLine[1]);
                            break;
                        case "P_ProductMinOrderMultiple":
                            newProduct.ProductMinOrder = Convert.ToInt32(partsOfLine[1]);
                            break;
                        case "P_RecommendedStorage":
                            newProduct.RecommendedStorage = partsOfLine[1];
                            break;
                        case "P_SupplierNumber":
                            newProduct.SupplierId = Convert.ToInt32(partsOfLine[1]);
                            break;
                        case "P_TastingNotes":
                            newProduct.TastingNotes = partsOfLine[1];
                            break;
                        case "P_WebBottlePrice":
                            newProduct.Price = Convert.ToDouble(partsOfLine[1]);
                            break;
                        case "P_TPNB":
                            newProduct.Tpnb = Convert.ToInt32(partsOfLine[1]);
                            break;
                        case "P_NewProduct":
                            newProduct.IsNewProduct = Convert.ToBoolean(partsOfLine[1]);
                            break;
                        case "ABV":
                            InsertFilterAndFilterProduct(filterList, 14, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Drink Type":
                            InsertFilterAndFilterProduct(filterList, 1, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Country":
                            InsertFilterAndFilterProduct(filterList, 2, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Region":
                            InsertFilterAndFilterProduct(filterList, 8, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Grape Variety":
                            InsertFilterAndFilterProduct(filterList, 3, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Style":
                            InsertFilterAndFilterProduct(filterList, 9, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Brand":
                            InsertFilterAndFilterProduct(filterList, 10, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Producer":
                            InsertFilterAndFilterProduct(filterList, 11, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Stopper":
                            InsertFilterAndFilterProduct(filterList, 12, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Vintage":
                            InsertFilterAndFilterProduct(filterList, 15, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                        case "Winery":
                            InsertFilterAndFilterProduct(filterList, 13, partsOfLine[1], ref counterFilter, newProduct.Id, filterProductList);
                            break;
                    }

                }

                lineCounter++;
            }

            file.Close();
            Console.WriteLine("There were {0} lines.", lineCounter);
            WriteFiltersToFile(filterList);
            WriteProductsToFile(productList);
            WriteFiltersProductToFile(filterProductList);
            Console.ReadLine();
        }
    }
}
