using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Maui;
using CommunityToolkit.Maui.ApplicationModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using MauiApp1.ViewModels;

namespace MauiApp1
{
    public partial class LoginPM : ObservableObject
    {
        [ObservableProperty]
        private string? _userName;
        [ObservableProperty]
        private string? _password;

        [ObservableProperty]
        private bool _newIsVisible;

        [ObservableProperty]
        private string? _roomNo;

        [RelayCommand]
        private async Task Login()
        {
            if (UserName == "admin" && Password == "loofah")
            {
                NewIsVisible = false;
                HomeVM._userName = UserName;
                HomeVM._password = "Wgp19930605.";
                HomeVM._topic = (RoomNo == null || RoomNo.Trim().Length == 0) ? "Default" : RoomNo;
                await Shell.Current.GoToAsync("//MainPage");
            }
            else
            {
                NewIsVisible = true;
            }
        }
    }
}
