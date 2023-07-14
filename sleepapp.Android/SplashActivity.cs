using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using AndroidX.AppCompat.App;
using Plugin.LocalNotification;

//namespace sleepapp.Droid
//{
//    [Activity(Theme = "@style/MainTheme.Splash",
//              MainLauncher = true,
//              NoHistory = true,
//              LaunchMode = LaunchMode.SingleTask)]
//    public class SplashActivity : AppCompatActivity
//    {
//        // Launches the startup task
//        protected override void OnCreate(Bundle savedInstanceState)
//        {
//            base.OnCreate(savedInstanceState);

//            var data = Intent.GetStringExtra(LocalNotificationCenter.ReturnRequest);
//            System.Diagnostics.Debug.WriteLine($"ReturnRequest data: {data}");
//            var mainIntent = new Intent(Application.Context, typeof(MainActivity));
//            System.Diagnostics.Debug.WriteLine(mainIntent);
//            mainIntent.SetFlags(ActivityFlags.SingleTop);
//            if (!string.IsNullOrWhiteSpace(data))
//            {
//                mainIntent.PutExtra(LocalNotificationCenter.ReturnRequest, data);
//            }

//            StartActivity(mainIntent);
//        }
//    }


//}



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

            var actionId = Intent.GetIntExtra(LocalNotificationCenter.ReturnRequestActionId, -1000);
            var data = Intent.GetStringExtra(LocalNotificationCenter.ReturnRequest);
            System.Diagnostics.Debug.WriteLine($"ReturnRequest data: {data}");

            var mainIntent = new Intent(Application.Context, typeof(MainActivity));
            System.Diagnostics.Debug.WriteLine(mainIntent);
            mainIntent.SetFlags(ActivityFlags.SingleTop);

            if (actionId != -1000)
            {
                mainIntent.PutExtra(LocalNotificationCenter.ReturnRequestActionId, actionId);
                if (!string.IsNullOrWhiteSpace(data))
                {
                    mainIntent.PutExtra(LocalNotificationCenter.ReturnRequest, data);
                }
            }

            StartActivity(mainIntent);
        }
    }
}
