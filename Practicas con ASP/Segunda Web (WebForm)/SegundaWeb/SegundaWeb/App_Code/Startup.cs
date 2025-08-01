using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SegundaWeb.Startup))]
namespace SegundaWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
