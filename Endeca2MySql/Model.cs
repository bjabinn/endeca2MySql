using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Endeca2MySql
{
    public class filterGroup
    {
        public int id;
        public string name;

        public filterGroup(int _id, string _name)
        {
            id = _id;
            name = _name;
        }
    }

    public class filter
    {
        int id;
        string name;
        int filterGroupId;

        public filter(int _id, string _name, int _filterGroupId) {
            id = _id;
            name = _name;
            filterGroupId = _filterGroupId;
        }
    }


}
