using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Endeca2MySql
{
    class Program
    {
        static void Main(string[] args)
        {
            int counterFilterGroupList = 15;
            var filterGroupList = new List<filterGroup>();

            filterGroupList.Add(new filterGroup(1, "Drink Type"));
            filterGroupList.Add(new filterGroup(2, "Country"));
            filterGroupList.Add(new filterGroup(3, "Grape Variety"));
            filterGroupList.Add(new filterGroup(4, "Price Per Bottle"));
            filterGroupList.Add(new filterGroup(5, "Awards"));
            filterGroupList.Add(new filterGroup(6, "Special Diet"));
            filterGroupList.Add(new filterGroup(7, "More Options"));
            filterGroupList.Add(new filterGroup(8, "Region"));
            filterGroupList.Add(new filterGroup(9, "Style"));
            filterGroupList.Add(new filterGroup(10, "Brand"));
            filterGroupList.Add(new filterGroup(11, "Producer"));
            filterGroupList.Add(new filterGroup(12, "Stopper"));
            filterGroupList.Add(new filterGroup(13, "Vinery"));
            filterGroupList.Add(new filterGroup(14, "ABV"));


            int counterFilter = 0
            var filterList = new List<filter>();

            //(1,'Champagne','champagne','',0,1,0),
            //(2,'Fortified','fortified','',0,1,0),
            //(3,'Mixed Cases','mixed','',0,1,0),
            //(4,'Port','port','',0,1,0),
            //(5,'Red Wine','redwine','',0,1,0),
            //(6,'Rose Wine','rosewine','',0,1,0),
            //(7,'Sherry','sherry','',0,1,0),
            //(8,'Sparkling','sparkling','',0,1,0),
            //(9,'White Wine','whitewine','',0,1,0),

            //(10,'France','fr','',0,2,0),
            //(11,'Australia','au','',0,2,0),
            //(12,'Italy','it','',0,2,0),
            //(13,'Spain','es','',0,2,0),
            //(14,'USA','us','',0,2,0),
            //(15,'South Africa','sa','',0,2,0),
            //(16,'Chile','ch','',0,2,0),
            //(17,'Argentina ','ag','',0,2,0),
            //(18,'China ','ch','',0,2,0),
            //(19,'England ','gb','',0,2,0),
            //(20,'Germany ','de','',0,2,0),
            //(21,'Greece','gr','',0,2,0),
            //(22,'Hungary ','hu','',0,2,0),
            //(23,'Israel ','is','',0,2,0),
            //(24,'New Zealand ','nz','',0,2,0),
            //(25,'Portugal ','pt','',0,2,0),

            //(26,'Carignan','carignan','',0,3,0),
            //(27,'Chardonnay','chardonnay','',0,3,0),
            //(28,'Sauvignon Blanc','sauvignonblanc','',0,3,0),
            //(29,'Shiraz','shiraz','',0,3,0),
            //(30,'Syrah','syrah','',0,3,0),

            //(31,'Bronze','bronze','',0,5,0),
            //(32,'Gold','gold','',0,5,0),
            //(33,'Silver','silver','',0,5,0),

            //(34,'FineWines','finewine','',0,6,0),
            //(35,'Kosher','kosher','',0,6,0),
            //(36,'Organic','organic','',0,6,0),
            //(37,'Vegan','vegan','',0,6,0),
            //(38,'Vegeterian','vegetarian','',0,6,0),

            //(39,'0.0','0.0','',0,14,0),
            //(40,'5.5','5.5','',0,14,0),
            //(41,'9.5','9.5','',0,14,0),
            //(42,'10','10','',0,14,0),
            //(43,'10.5','10.5','',0,14,0),
            //(44,'11','11','',0,14,0),
            //(45,'11.5','11.5','',0,14,0),
            //(46,'12','12','',0,14,0),
            //(47,'12.5','12.5','',0,14,0),(48,'13','13','',0,14,0),(49,'13.5','13.5','',0,14,0),(50,'14','14','',0,14,0),(51,'14.5','14.5','',0,14,0),(52,'California','californiaR','',0,8,0),(53,'Central Valley','centralvalleyR','',0,8,0),(54,'Champagne','champagneR','',0,8,0),(55,'Coastal Region','coastalR','',0,8,0),(56,'Emilia-Romagna','emiliaRomagnaR','',0,8,0),(57,'Languedoc-Roussillon','LanguedocroussillonR','',0,8,0),(58,'Marlborough','marlboroughR','',0,8,0),(59,'Mosel-Saar-Ruwer','moselsaarruwerR','',0,8,0),(60,'Rapel','rapelr','',0,8,0),(61,'Rioja','riojar','',0,8,0),(62,'South Eastern Australia','southeasternaustriar','',0,8,0),(63,'South Island','southislandr','',0,8,0),(64,'Trentino-Alto Adige','trentiloaltoadiger','',0,8,0),(65,'Veneto','venetor','',0,8,0),(66,'Vin de France','vindefrancer','',0,8,0),(67,'Western Cape','westercaper','',0,8,0),(68,'Pinot Noir','pinotnoir','',0,3,0),(69,'Merlot','merlot','',0,3,0),(70,'Grenache','grenache','',0,3,0),(71,'Blend','blend','',0,3,0),(72,'Pinot Meunier','pinotmeunier','',0,3,0),(73,'Tempranillo','tempranillo','',0,3,0),(74,'Riesling','riesling','',0,3,0),(75,'Garnacha','garnacha','',0,3,0),(76,'Zinfandel','zinfandel','',0,3,0),(77,'Colombard','colombard','',0,3,0),(78,'White Grape Blend','whitegrapeBlend','',0,3,0),(79,'Glera','glera','',0,3,0),(80,'Pinot Blanco','pinotblanco','',0,3,0),(81,'Malbec','malbec','',0,3,0),(82,'Mourvèdre','mourvedre','',0,3,0),(83,'Pignoletto','pignoletto','',0,3,0),(84,'Cabernet Sauvignon','cabernetsauvignon','',0,3,0),(85,'Pinot Grigio','pinotgrigio','',0,3,0),(86,'Sémillon','semillon','',0,3,0),(87,'Macabeo','macabeo','',0,3,0),(88,'Parellada','parellada','',0,3,0),(89,'Xarello','xarello','',0,3,0),(90,'Sauvignon Gris','sauvignongris','',0,3,0),(91,'Medium Dry','mediumdry','',0,9,0),(92,'Medium Bodied','mediumbodied','',0,9,0),(93,'Medium Sweet','mediumsweet','',0,9,0),(94,'Medium','medium','',0,9,0),(95,'Full or Robust','fullrobust','',0,9,0),(96,'Dry','dry','',0,9,0),(97,'Light and Fruity','lightandfruity','',0,9,0),(98,'Screwcap','screwcap','',0,12,0),(99,'Natural Cork','naturalcork','',0,12,0),(100,'Other','otherStopper','',0,12,0),(101,'Brancott Estate','Brancottestate','',0,10,0),(102,'First Cape','firstcape','',0,10,0),(103,'Barefoot','barefoot','',0,10,0),(104,'Castelmaure','castelmaure','',0,10,0),(105,'Jackson Estate','jacksonestate','',0,10,0),(106,'Casillero del Diablo','casillerodeldiablo','',0,10,0),(107,'Tesco','tesco','',0,10,0),(108,'Castillo de Albai','castillodealbai','',0,10,0),(109,'Lagunilla','lagunilla','',0,10,0),(110,'Gallo Family Vineyards','gallofamilyvineyards','',0,10,0),(111,'Faustino Rivero Ulecia','faustinoriveroulecia','',0,10,0),(112,'Blossom Hill','blossomhill','',0,10,0),(113,'Blue Nun','bluenun','',0,10,0),(114,'Dino','dino','',0,10,0),(115,'Bellingham','bellingham','',0,10,0),(116,'Grand Conseiller','grandconseiller','',0,10,0),(117,'Black Tower','blacktower','',0,10,0),(118,'Balfour','balfour','',0,10,0),(119,'Eisberg','Eisberg','',0,10,0),(120,'Rosewater Park','rosewaterpark','',0,10,0),(121,'Cono Sur Bicicleta','conosurbicicleta','',0,10,0),(122,'Catalonia','cataloniaR','',0,8,0),(123,'Freixenet','freixenet','',0,10,0);


            filterList.Add(new filter(1, "Champagne", 1));




            int lineCounter = 0;
            string line;


            System.IO.StreamReader file = new System.IO.StreamReader(@"WineEndeca.txt");
            while ((line = file.ReadLine()) != null)
            {

                lineCounter++;
            }

            file.Close();
            Console.WriteLine("There were {0} lines.", lineCounter);
            Console.ReadLine();
        }
    }
}
