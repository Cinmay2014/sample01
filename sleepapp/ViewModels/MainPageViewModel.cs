using Amazon.CognitoIdentityProvider.Model;
using Amazon.CognitoIdentityProvider;
using Prism.Commands;
using Prism.Navigation;
using sleepapp.ViewModels;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Essentials.Interfaces;
using Amazon.Runtime;
using System.Net;
using System.Text;
using System.Xml.Linq;
using Amazon;
using Amazon.Lambda;
using Amazon.Lambda.Model;
using Newtonsoft.Json.Linq;
using System.Diagnostics;
using Xamarin.Essentials;
using Amazon.Runtime.CredentialManagement;
using Xamarin.Forms;
using Newtonsoft.Json;
using System.Net.Http;
using System.Threading;
using Amazon.CognitoIdentity;
using Amazon.DynamoDBv2;
using Amazon.DynamoDBv2.DataModel;
using Amazon.DynamoDBv2.DocumentModel;
using System.Threading.Tasks;



namespace sleepapp.ViewModels
{
    public class MainPageViewModel : ViewModelBase
    {
        private readonly INavigationService _navigationService;

        public MainPageViewModel(INavigationService navigationService) : base(navigationService)
        {
            Title = "Sleep App Test";
            _navigationService = navigationService;
            NavigateToNotifCommand = new DelegateCommand(NavigateToNotif);
        }

        public DelegateCommand NavigateToNotifCommand { get; private set; }

        private async void NavigateToNotif()
        {
            await _navigationService.NavigateAsync("Notif");
        }
    }
}
