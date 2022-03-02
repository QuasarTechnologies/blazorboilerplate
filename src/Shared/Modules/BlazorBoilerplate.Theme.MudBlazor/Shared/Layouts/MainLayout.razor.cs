using System;
using BlazorBoilerplate.Theme.Material.Services;
using Microsoft.AspNetCore.Components;
using MudBlazor;


namespace BlazorBoilerplate.Shared
{
    public partial class MainLayoutBase : LayoutComponentBase
    {
    
        [Inject] private  LayoutService LayoutService { get; set; }
        
        private MudThemeProvider _mudThemeProvider;
        
        private bool _drawerOpen = false;
        
        protected override void OnInitialized()
        {
            _mudThemeProvider.IsDarkMode=true;
            LayoutService.SetBaseTheme(BlazorBoilerplate.Theme.Material.Theme.Theme.LandingPageTheme());

            base.OnInitialized();
        }
        
        private void ToggleDrawer()
        {
            _drawerOpen = !_drawerOpen;
        }

    }
}
