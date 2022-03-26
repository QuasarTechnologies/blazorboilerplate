using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Syncfusion.Blazor;

namespace BlazorBoilerplate.Theme.MudBlazor.Demo.Pages
{
   public class KennelSchedulerBase : BaseComponent
    {
        protected override async Task OnAfterRenderAsync(bool firstRender)
        {
            if (!firstRender) return;
            try
            {
            

            
                Console.WriteLine("Finished OnAfterRenderAsync");


                StateHasChanged();
            }
            catch (OperationCanceledException) { }
            catch (Exception ex) { Console.WriteLine(ex); }
            finally {}
        }

       
    }
}
