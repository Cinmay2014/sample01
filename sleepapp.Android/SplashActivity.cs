using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using AndroidX.AppCompat.App;
using Plugin.LocalNotification;

namespace sleepapp.Droid
{
    [Activity(Theme = "@style/MainTheme.Splash",
              MainLauncher = true,
              NoHistory = true,
              LaunchMode = LaunchMode.SingleTask)]
    public class SplashActivity : AppCompatActivity
    {
        // Launches the startup task
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            var data = Intent.GetStringExtra(LocalNotificationCenter.ReturnRequest);
            System.Diagnostics.Debug.WriteLine($"ReturnRequest data: {data}");
            var mainIntent = new Intent(Application.Context, typeof(MainActivity));
            System.Diagnostics.Debug.WriteLine(mainIntent);
            mainIntent.SetFlags(ActivityFlags.SingleTop);
            if (!string.IsNullOrWhiteSpace(data))
            {
                mainIntent.PutExtra(LocalNotificationCenter.ReturnRequest, data);
            }

            StartActivity(mainIntent);
        }
    }

    //[Activity(Theme = "@style/MainTheme.Splash",
    //          MainLauncher = true,
    //          NoHistory = true,
    //          LaunchMode = LaunchMode.SingleTask)]
    //public class SplashActivity : AppCompatActivity
    //{
    //    protected override void OnResume()
    //    {
    //        base.OnResume();
    //        //var data = Intent.GetStringExtra(LocalNotificationCenter.ExtraReturnDataAndroid);
    //        var data = Intent.GetStringExtra(LocalNotificationCenter.ReturnRequest);
    //        var mainIntent = new Intent(Application.Context, typeof(MainActivity));

    //        mainIntent.SetFlags(ActivityFlags.SingleTop);
    //        if (!string.IsNullOrWhiteSpace(data))
    //        {
    //            mainIntent.PutExtra(LocalNotificationCenter.ReturnRequest, data);
    //        }

    //        StartActivity(mainIntent);
    //    }
    //}
}
