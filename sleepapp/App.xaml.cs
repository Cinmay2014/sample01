using Plugin.LocalNotification;
using Plugin.LocalNotification.AndroidOption;
using Plugin.LocalNotification.EventArgs;
using Plugin.LocalNotification.iOSOption;
using Prism;
using Prism.Ioc;
using Prism.Navigation;
using sleepapp.ViewModels;
using sleepapp.Views;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Essentials.Implementation;
using Xamarin.Essentials.Interfaces;
using Xamarin.Forms;
using Amazon;
using Amazon.DynamoDBv2;
using Amazon.DynamoDBv2.DataModel;
using Prism.Mvvm;
using DocumentFormat.OpenXml.Spreadsheet;
using Prism.DryIoc;
using sleepapp;

namespace sleepapp
{
    public partial class App  : PrismApplication
    {



        public App(IPlatformInitializer initializer) : base(initializer)

        {
            InitializeComponent();
            LocalNotificationCenter.Current.NotificationActionTapped += Current_NotificationActionTapped;

        }



        protected override async void OnInitialized()
        {


            await NavigationService.NavigateAsync("NavigationPage/MainPage");

        }

        private async void Current_NotificationActionTapped(NotificationActionEventArgs e)
        {
            
            if (e.IsTapped)
            {
                Console.WriteLine($"e is {e.Request }");
                if (e.Request is null)
                {
                    return;
                }
                //if (e.Request.NotificationId == 88)
                if (e.Request.Android.ChannelId== "my_channel_01")
                {
                    
                    return;
                }
                else if (e.Request.Android.ChannelId== "my_channel_02")
                {
                    
                    await NavigationService.NavigateAsync("/Report");
                }
                else
                {
                   
                    await NavigationService.NavigateAsync("/WeeklyTips");
                }


            }
          
        }


        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            



            containerRegistry.RegisterForNavigation<NavigationPage>();
            containerRegistry.RegisterForNavigation<MainPage, MainPageViewModel>();
            containerRegistry.RegisterForNavigation<Notif, NotifViewModel>();
            containerRegistry.RegisterForNavigation<Report, ReportViewModel>();
            containerRegistry.RegisterForNavigation<WeeklyTips, WeeklyTipsViewModel>();


        }


    }



}
