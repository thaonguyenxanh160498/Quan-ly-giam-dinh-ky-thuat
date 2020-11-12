using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EIMS.UI.Startup))]
namespace EIMS.UI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
