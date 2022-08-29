using AutoMapper;
using Shopping_Library.Entity;
using Shopping_Mall_WebApi.api;

namespace Shopping_Mall_WebApi.Automap
{
    public class AutoMapper: Profile
    {
        public AutoMapper()
        {
            CreateMap<Malls, ModelApiMall>().ReverseMap();

        }
    }
}
