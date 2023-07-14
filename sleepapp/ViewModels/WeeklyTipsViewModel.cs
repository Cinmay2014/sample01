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
using Xamarin.Essentials;

namespace sleepapp.ViewModels
{
    internal class WeeklyTipsViewModel : INotifyPropertyChanged, INavigationAware
    {
        private readonly INavigationService _navigationService;
        public event PropertyChangedEventHandler PropertyChanged;
        public ICommand ExitAppCommand { get; set; }



        private string _title;
        private string _message;




        public DelegateCommand GoBackCommand { get; private set; }

        private async void GoBack()
        {

            var result = await _navigationService.NavigateAsync("/NavigationPage/Report");
            if (!result.Success)
            {
                // Log or handle navigation failure
                System.Diagnostics.Debug.WriteLine(result.Exception.Message);
            }
        }




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
            var (savedGenerationDate, savedTitle, savedMessage) = LoadSavedTip();
            var daysSinceLastGeneration = (DateTime.Now - savedGenerationDate).TotalDays;
            if (daysSinceLastGeneration >= 7 || string.IsNullOrEmpty(savedTitle) || string.IsNullOrEmpty(savedMessage))
            {
                var (title, message) = GetRandomWeeklyNotification();
                Title = title;
                Message = message;
                SaveCurrentTip(DateTime.Now, title, message);

            }
            else
            {
                // Use the saved tip
                Title = savedTitle;
                Message = savedMessage;
            }

            //GoBackCommand = new Command(GoBack);
            GoBackCommand = new DelegateCommand(GoBack);


            ExitAppCommand = new Command(ExitApp);



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

        private void SaveCurrentTip(DateTime generatedDate, string title, string message)
        {
            Application.Current.Properties["TipGeneratedDate"] = generatedDate;
            Application.Current.Properties["TipTitle"] = title;
            Application.Current.Properties["TipMessage"] = message;
            Application.Current.SavePropertiesAsync();
        }

        private (DateTime generatedDate, string title, string message) LoadSavedTip()
        {
            if (Application.Current.Properties.ContainsKey("TipGeneratedDate") &&
                Application.Current.Properties.ContainsKey("TipTitle") &&
                Application.Current.Properties.ContainsKey("TipMessage"))
            {
                var generatedDate = (DateTime)Application.Current.Properties["TipGeneratedDate"];
                var title = Application.Current.Properties["TipTitle"].ToString();
                var message = Application.Current.Properties["TipMessage"].ToString();
                return (generatedDate, title, message);
            }
            return (DateTime.MinValue, null, null);
        }


        private (string title, string message) GetRandomWeeklyNotification()
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);

            var assembly = typeof(NotifViewModel).GetTypeInfo().Assembly;
            var resourceName = "sleepapp.tips.xlsx";

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            {
                if (stream == null)
                {
                    throw new InvalidOperationException($"Resource '{resourceName}' not found. Please check the file name and ensure it is set as an embedded resource.");
                }
                var readerConfig = new ExcelReaderConfiguration
                {
                    FallbackEncoding = Encoding.GetEncoding(1252)
                };

                using (var reader = ExcelReaderFactory.CreateReader(stream, readerConfig))
                {
                    var dataSet = reader.AsDataSet();
                    var dataTable = dataSet.Tables[0];
                    var rowCount = dataTable.Rows.Count;

                    // Generate a random row index
                    var random = new Random();
                    int randomRowIndex;
                    string title;
                    string message;

                    Console.WriteLine("DataTable rows:");
                    for (int i = 0; i < dataTable.Rows.Count; i++)
                    {
                        Console.WriteLine($"Row {i}: Title = {dataTable.Rows[i][0]}, Message = {dataTable.Rows[i][1]}");
                    }

                    // Keep generating a random row index until a row with non-empty title and message is found
                    do
                    {
                        randomRowIndex = random.Next(0, rowCount);
                        title = dataTable.Rows[randomRowIndex][0].ToString();
                        message = dataTable.Rows[randomRowIndex][1].ToString();
                    } while (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(message));

                    Console.WriteLine($"Random row index: {randomRowIndex}");
                    Console.WriteLine($"Random title: {title}");
                    Console.WriteLine($"Random message: {message}");
                    MessagingCenter.Send(Application.Current, "WeeklyNotificationTriggered");
                    Preferences.Set("IsWeeklyNotificationTriggered", true);
                    return (title, message);
                }
            }
        }

        public void OnNavigatedFrom(INavigationParameters parameters)
        {
            //_navigationService.NavigateAsync("Report");
        }

        public void OnNavigatedTo(INavigationParameters parameters)
        {
            throw new NotImplementedException();
        }
    }
}
