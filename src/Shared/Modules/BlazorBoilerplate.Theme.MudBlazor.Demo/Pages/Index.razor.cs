using BlazorBoilerplate.Shared.Dto.Db;
using BlazorBoilerplate.Shared.Interfaces;
using BlazorBoilerplate.Shared.Models;
using BlazorBoilerplate.Theme.Material.Shared.Components;
using Breeze.Sharp;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using BlazorBoilerplate.UI.Base;
using BlazorBoilerplate.UI.Base.Shared.Components;

namespace BlazorBoilerplate.Theme.Material.Demo.Pages
{
    public class IndexBasePage : BaseComponent , IDisposable
    {

        protected List<SelectItem<Guid?>> Creators = new();
        protected List<SelectItem<Guid?>> Editors = new();


     
        protected override Task OnInitializedAsync()
        {
            return base.OnInitializedAsync();
        }

        protected override async Task OnAfterRenderAsync(bool firstRender)
        {
            if (!firstRender) return;
            try
            {
               


                


                StateHasChanged();
            }
            catch (OperationCanceledException) { }
            catch (Exception ex) { Console.WriteLine(ex); }

        }


        public override void Dispose()
        {
            base.Dispose();
        }
    }

}
