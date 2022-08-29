
using Shopping_Library.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopping_MAll_TestProject.testdata
{
    public class ShoppingTestdata
    {
       


            public static IEnumerable<Malls> GetTestShops()
            {
                return new List<Malls>()
            {
                new Malls()
                {
                    Id=1,
                    Name="Manisha",
                    City="vizag",
                    State="Andhra",
                    Year=2007

                },
                 new Malls()
                {
                    Id=2,
                    Name="Devi",
                    City="vizag",
                    State="Andhra",
                    Year=2007
                },
                  new Malls()
                {
                    Id=3,
                    Name="Radhika",
                    City="vizag",
                    State="Andhra",
                    Year=2007
                },
                   new Malls()
                {
                    Id=4,
                    Name="Radhika",
                    City="vizag",
                    State="Andhra",
                    Year=2007
                },
                    new Malls()
                {
                    Id=5,
                    Name="Radhika",
                    City="vizag",
                    State="Andhra",
                    Year=2007
                },
            };

            }
        }
    }

