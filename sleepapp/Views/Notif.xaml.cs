using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plugin.LocalNotification;
using Plugin.LocalNotification.EventArgs;
using sleepapp.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace sleepapp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Notif : ContentPage
    {
        public Notif()
        {
            InitializeComponent();
         
            //BindingContext = new NotifViewModel();
        }


    }
}