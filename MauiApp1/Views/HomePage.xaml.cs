using System.Collections.ObjectModel;
using System.ComponentModel;
using CommunityToolkit.Mvvm.Messaging;
using MauiApp1.Models;
using MauiApp1.ViewModels;
using static System.Net.Mime.MediaTypeNames;

namespace MauiApp1.Views;

public partial class HomePage : ContentPage
{
    public HomePage()
    {
        InitializeComponent();
        WeakReferenceMessenger.Default.Register<ObservableCollection<MessageModel>>(this, MessageCallback);


    }

    private void MessageCallback(object recipient, ObservableCollection<MessageModel> message)
    {
        if (message.Count > 0)
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                ScrollView.ScrollToAsync(0, CollectionView.Height, true);
            });
        }
    }

}

