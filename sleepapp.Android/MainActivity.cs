using Android.App;
using Android.Content.PM;
using Android.OS;
using Prism;
using Prism.Ioc;
using Plugin.LocalNotification;
using Android.Content;
using Plugin.LocalNotification.AndroidOption;
using sleepapp.Views;
using Newtonsoft.Json;
using System.Collections.Generic;
using Plugin.LocalNotification.EventArgs;
using System;

namespace sleepapp.Droid
{
    [Activity(Theme = "@style/MainTheme",
        LaunchMode = LaunchMode.SingleTask,
              ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
       

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);


            Xamarin.Essentials.Platform.Init(this, savedInstanceState);

            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            // Initialize NotificationCenter
            LocalNotificationCenter.CreateNotificationChannel(
                //channel 01 for night
                new NotificationChannelRequest
                {
                    Id = $"my_channel_01",
                    Name = "night",
                    Description = "night",
                    
                });

            LocalNotificationCenter.CreateNotificationChannel(
                    //channel 02 for morning
                    new NotificationChannelRequest
                    {
                        Id = $"my_channel_02",
                        Name = "morning",
                        Description = "morning",
                        
                    });
            LocalNotificationCenter.CreateNotificationChannel(
                     //channel 03 for weekly
                     new NotificationChannelRequest
                     {
                         Id = $"my_channel_03",
                         Name = "Weekly",
                         Description = "Weekly",
                        
                     });


            LoadApplication(new App(new AndroidInitializer()));
            //LoadApplication(new App());

            LocalNotificationCenter.NotifyNotificationTapped(Intent);
        }

        protected override void OnNewIntent(Intent intent)
        {
            Console.WriteLine("OnNewIntent called");
            Intent = intent;
            string data = Intent.GetStringExtra(LocalNotificationCenter.ReturnRequest);
            Console.WriteLine($"ReturnRequest data: {data}");
            LocalNotificationCenter.NotifyNotificationTapped(Intent);
            base.OnNewIntent(intent);
           
           
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        




    }

    public class AndroidInitializer : IPlatformInitializer
    {
        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            // Register any platform specific implementations
        }
    }



}

