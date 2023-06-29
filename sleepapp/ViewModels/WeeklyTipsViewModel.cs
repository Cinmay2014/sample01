using sleepapp;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows.Input;
using Xamarin.Forms;

using System.ComponentModel;
using System.Runtime.CompilerServices;
using ExcelDataReader;
using System.Reflection;
using System.Text;
using Prism.Navigation.Xaml;
using Prism.Navigation;
using Prism.Commands;
using sleepapp.Views;




namespace sleepapp.ViewModels
{
    internal class WeeklyTipsViewModel : INotifyPropertyChanged, INavigationAware
    {
        private readonly INavigationService _navigationService;
        public event PropertyChangedEventHandler PropertyChanged;

        private string _title;
        private string _message;

        public ICommand ExitAppCommand { get; set; }
        public DelegateCommand GoBackCommand { get; private set; }

        public string Title
        {
            get => _title;
            set
            {
                if (_title != value)
                {
                    _title = value;
                    OnPropertyChanged();
                }
            }
        }

        public string Message
        {
            get => _message;
            set
            {
                if (_message != value)
                {
                    _message = value;
                    OnPropertyChanged();
                }
            }
        }

        public WeeklyTipsViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
            Title = "Weekly Tips";
            Message = "Enter your weekly tips here.";

            GoBackCommand = new DelegateCommand(GoBack);
            ExitAppCommand = new Command(ExitApp);
        }

        private async void GoBack()
        {
            MessagingCenter.Send(this, "WeeklyNotificationTriggered");

            var result = await _navigationService.NavigateAsync("/NavigationPage/Report");
            if (!result.Success)
            {
                // Log or handle navigation failure
                System.Diagnostics.Debug.WriteLine(result.Exception.Message);
            }
        }

        private void ExitApp()
        {
            System.Diagnostics.Process.GetCurrentProcess().CloseMainWindow();
            System.Diagnostics.Process.GetCurrentProcess().Close();
        }

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public void OnNavigatedFrom(INavigationParameters parameters)
        {
            //_navigationService.NavigateAsync("Report");
        }

        public void OnNavigatedTo(INavigationParameters parameters)
        {
            // Do any required initialization or data loading here
        }
    }
}
