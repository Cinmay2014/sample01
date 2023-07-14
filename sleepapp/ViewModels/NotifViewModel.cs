using System;
using System.Windows.Input;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Plugin.LocalNotification;
using Xamarin.Forms;
using Xamarin.Essentials;
using Plugin.LocalNotification.AndroidOption;
using Plugin.LocalNotification.Json;
using System.Threading.Tasks;
using sleepapp.Views;
using Newtonsoft.Json;
using Prism.Navigation;
using System.IO;
using System.Text;
using System.Reflection;
using ExcelDataReader;
using Amazon.DynamoDBv2.DataModel;

namespace sleepapp.ViewModels
{
    public class NotifViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private readonly INavigationService _navigationService;

        

        private bool _isNotifSet;
        public bool IsNotifSet
        {
            get => _isNotifSet;
            set
            {
                _isNotifSet = value;
                OnPropertyChanged(nameof(IsNotifSet));
            }
        }



        // notification1
        private int _notificationId1 = 88;
        public int NotificationId1 { get => _notificationId1; }

        private string _title1 = "Night Notification";
        public string Title1 { get => _title1; }

        private string _message1 = "Time to go to bed!";
        public string Message1{ get => _message1; }

        
        private TimeSpan _notifyTime1;
        public TimeSpan NotifyTime1
        {
            get => _notifyTime1;
            set
            {
                _notifyTime1 = value;
                OnPropertyChanged(nameof(NotifyTime1));
            }
        }


        // notification2
        private int _notificationId2 = 89;
        public int NotificationId2 { get => _notificationId2; }

        private string _title2 = "Morning Notification";
        public string Title2 { get => _title2; }

        private string _message2 = "Time for your sleep self-report!";
        public string Message2 { get => _message2; }

        private TimeSpan _notifyTime2;
        public TimeSpan NotifyTime2
        {
            get => _notifyTime2;
            set
            {
                _notifyTime2 = value;
                OnPropertyChanged(nameof(NotifyTime2));
            }
        }

        // weekly notification
        private int _notificationId3 = 90;
        public int NotificationId3 { get => _notificationId3; }

        private string _title3 = "Weekly Notification";
        public string Title3 { get => _title3; }
        private string _message3 = "Your weekly article is ready!";
        public string Message3 { get => _message3; }

        private TimeSpan _notifyTime3;
        public TimeSpan NotifyTime3
        {
            get => _notifyTime3;
            set
            {
                _notifyTime3 = value;
                OnPropertyChanged(nameof(NotifyTime3));
            }
        }



        private bool _isRepeatEnabled;
        public bool IsRepeatEnabled
        {
            get => _isRepeatEnabled;
            set
            {
                _isRepeatEnabled = value;
                OnPropertyChanged(nameof(IsRepeatEnabled));
            }
        }

        private string _repeatInterval;
        public string RepeatInterval
        {
            get => _repeatInterval;
            set
            {
                _repeatInterval = value;
                OnPropertyChanged(nameof(RepeatInterval));
            }
        }


        public List<string> RepeatOptions { get; }
        public ICommand SetNotificationCommand => new Command(SetNotification);

        public NotifViewModel(INavigationService navigationService)
        {
            
            // Initialize properties for notification1

            NotifyTime1 = DateTime.Now.TimeOfDay;
            // Initialize properties for notification2

            NotifyTime2 = DateTime.Now.TimeOfDay;
            // Initialize properties for weekly notification
            NotifyTime3 = DateTime.Now.TimeOfDay;

            IsNotifSet = Preferences.Get("IsNotifSet", false);

            IsRepeatEnabled = true;
            _navigationService = navigationService;
           
        }





        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private async void SetNotification()
        {
            //ScheduleNotification(_title1,_message1,NotifyTime1, _notificationId1,  "my_channel_01", TimeSpan.FromDays(1));
            //ScheduleNotification(_title2,_message2, NotifyTime2, _notificationId2,  "my_channel_02", TimeSpan.FromDays(1));
            //ScheduleNotification(_title3,_message3, NotifyTime3, _notificationId3,  "my_channel_03", TimeSpan.FromDays(7));
            ScheduleNotification(_title1, _message1, NotifyTime1, _notificationId1, "my_channel_01");
            ScheduleNotification(_title2, _message2, NotifyTime2, _notificationId2, "my_channel_02");
            ScheduleNotification(_title3, _message3, NotifyTime3, _notificationId3, "my_channel_03");


            IsNotifSet = true;
            Preferences.Set("IsNotifSet", IsNotifSet);
            await _navigationService.NavigateAsync("Report");


        }

        //add async &await -0706
        //private async void ScheduleNotification(string title,string message,TimeSpan notifyTime, int notificationId,  string channelId, TimeSpan repeatInterval)
        private async void ScheduleNotification(string title, string message, TimeSpan notifyTime, int notificationId, string channelId)
        {
            
            DateTime notifyDateTime = DateTime.Today.Add(notifyTime);

            // If the notification time has already passed for today, schedule it for tomorrow
            if (notifyDateTime < DateTime.Now)
            {
                notifyDateTime = notifyDateTime.AddDays(1);
            }


            if (await LocalNotificationCenter.Current.AreNotificationsEnabled() == false)
            {
                await LocalNotificationCenter.Current.RequestNotificationPermission();
            }

            // Set repeat type based on notificationId
            var repeatType = (notificationId == _notificationId1 || notificationId == _notificationId2)
                ? NotificationRepeat.Daily
                : NotificationRepeat.Weekly;

            // Schedule the notification
            var notification = new NotificationRequest
            {
                NotificationId = notificationId,


                Title = title,
                Description = message,
                ReturningData= notificationId.ToString(),
                
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = notifyDateTime,
                    RepeatType=repeatType,
                    //RepeatType = NotificationRepeat.Daily,
                    //NotifyRepeatInterval = repeatInterval


                },
                Android = { ChannelId = channelId,
                Priority= AndroidPriority.High},
                iOS = {Priority = Plugin.LocalNotification.iOSOption.iOSPriority.TimeSensitive, ApplyBadgeValue=true,PresentAsBanner=true,PlayForegroundSound=true,ShowInNotificationCenter=true},

                CategoryType = NotificationCategoryType.Status,
               

            };


            
            await LocalNotificationCenter.Current.Show(notification);
            
        }

        
    }
}
