using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Endeca2MySql
{
    public class filterGroup
    {
        public int Id;
        public string Name;

        public filterGroup(int id, string name)
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


}
