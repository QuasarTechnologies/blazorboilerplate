using System;
using BlazorBoilerplate.Theme.Material.Services;
using Microsoft.AspNetCore.Components;


namespace BlazorBoilerplate.Shared
{
    public partial class LandingLayout : LayoutComponentBase
    {
        [Inject] protected LayoutService LayoutService { get; set; }
        
        private bool _drawerOpen = false;
        
        protected override void OnInitialized()
        {
            LayoutService.SetBaseTheme(BlazorBoilerplate.Theme.Material.Theme.Theme.LandingPageTheme());

            base.OnInitialized();
        }
        
        private void ToggleDrawer()
        {
            _drawerOpen = !_drawerOpen;
        }

    }
}
