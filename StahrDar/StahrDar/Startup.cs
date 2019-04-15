using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StahrDar.Startup))]
namespace StahrDar
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
