using Amazon.DynamoDBv2.DataModel;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace sleepapp.ViewModels
{
    //public class ReportViewModel : BindableBase, INavigationAware
    public class ReportViewModel : BindableBase
    {
        private string _wakeup;
        private string _hours;
        private string _minutes;
        private string _sounds;
        private string _feel;
        private string _rating;
        private string _wakeUpTimes;

        


        public DelegateCommand NavigateToWeeklyTipsCommand { get; }

        private readonly INavigationService _navigationService;

        private DynamoDBContext _context;

        // Add this to your ReportViewModel
        private bool _isWeeklyNotificationTriggered=false;

        public bool IsWeeklyNotificationTriggered
        {
            get => _isWeeklyNotificationTriggered;
            set
            {
                SetProperty(ref _isWeeklyNotificationTriggered, value);
            }
        }



        


        public ReportViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            NavigateToWeeklyTipsCommand = new DelegateCommand(ExecuteNavigateToWeeklyTipsCommand);
            _isWeeklyNotificationTriggered = Preferences.Get("IsWeeklyNotificationTriggered", false);
            MessagingCenter.Subscribe<WeeklyTipsViewModel>(this, "WeeklyNotificationTriggered", (sender) => {
                //OnWeeklyNotificationTriggered();
                IsWeeklyNotificationTriggered = true;
               
               
            });
            // Save the state
            Preferences.Set("IsWeeklyNotificationTriggered", true);

        }



        private async void ExecuteNavigateToWeeklyTipsCommand()
        {
            await _navigationService.NavigateAsync("WeeklyTips");
        }
        public string Wakeup
        {
            get { return _wakeup; }
            set { SetProperty(ref _wakeup, value); }
        }

        public string Hours
        {
            get { return _hours; }
            set { SetProperty(ref _hours, value); }
        }

        public string Minutes
        {
            get { return _minutes; }
            set { SetProperty(ref _minutes, value); }
        }

        public string Sounds
        {
            get { return _sounds; }
            set { SetProperty(ref _sounds, value); }
        }

        public string Feel
        {
            get { return _feel; }
            set { SetProperty(ref _feel, value); }
        }

        public string Rating
        {
            get { return _rating; }
            set { SetProperty(ref _rating, value); }
        }

        public string WakeUpTimes
        {
            get { return _wakeUpTimes; }
            set { SetProperty(ref _wakeUpTimes, value); }
        }

        public DelegateCommand SubmitCommand { get; }



        string userId = Preferences.Get("UserId", string.Empty);

       

        public async void ExecuteSubmitCommand()
        {
          

            // Show a success message
            await App.Current.MainPage.DisplayAlert("Success", "Data saved successfully", "OK");
        }

        public void OnNavigatedFrom(INavigationParameters parameters)
        {
            //
        }
    }

    

}



