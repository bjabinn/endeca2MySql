using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Endeca2MySql
{
    public class FilterGroup
    {
        public int Id;
        public string Name;

        public FilterGroup(int id, string name)
        {
            Id = id;
            Name = name;
        }
    }

    public class Filter
    {
        public int Id;
        public string Name;
        public string Value;
        public int FilterGroupId;
        public bool FromFile;

        public Filter(int id, string name, string value, string empty1, int zero1, int filterGroupId, int zero2, bool fromFile) {
            Id = id;
            Name = name;
            Value = value; 
            FilterGroupId = filterGroupId;
            FromFile = fromFile;
        }
    }

    public class Product
    {
        public int Id;
        public string Description;
        public string History;
        public string Images;
        public int NumberItemsInCase;
        public string PressComments;
        public int ProductMinOrder;
        public string RecommendedStorage;
        public int SupplierId;
        public string TastingNotes;
        public double Price;
        public int Stock;
        public bool Deleted;
        public int Tpnb;
        public bool IsNewProduct;

        public Product()
        {
            
        }

        public Product(int id, string d, string h, string im, int itemsCase, string comments,
            int minOrder, string recomm, int supId, string tas, double p, int st, bool del, int tpnb, bool np)
        {
            Id = id;
            Description = d;
            History = h;
            Images = im;
            NumberItemsInCase = itemsCase;
            PressComments = comments;
            ProductMinOrder = minOrder;
            RecommendedStorage = recomm;
            SupplierId = supId;
            TastingNotes = tas;
            Price = p;
            Stock = st;
            Deleted = del;
            Tpnb = tpnb;
            IsNewProduct = np;
        }
    }

    public class Product_filter
    {
        public int ProductId;
        public int FilterId;

        public Product_filter(int productId, int filterId)
        {
            ProductId = productId;
            FilterId = filterId;
        }
    }


}
