using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MvcWardrobe.Startup))]
namespace MvcWardrobe
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
