using Prism.Navigation;
using sleepapp.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace sleepapp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Report : ContentPage
    {
        public Report()
        {
            InitializeComponent();
            //BindingContext = new ReportViewModel();
        }

       
        private void OnSubmitButtonClicked(object sender, EventArgs e)
        {
            ((ReportViewModel)BindingContext).ExecuteSubmitCommand();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            var viewModel = BindingContext as ReportViewModel;
            if (viewModel != null)
            {
                MessagingCenter.Unsubscribe<WeeklyTipsViewModel>(viewModel, "WeeklyNotificationTriggered");
            }
        }
    }
}