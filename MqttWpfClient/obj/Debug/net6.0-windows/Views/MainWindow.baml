   M S B A M L   `   `   `  ����  MqttWpfClient$    MqttWpfClient.Views.MainWindow   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      $	��925��5      $	��650��5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5	       � Title 5      �� *Title+.��5
      �  � RowDefinitions 5   
   �� 5      �� 5      $	��150 �6   .+�5   
   �� -   5        $��ScrollViewer��5      $
��Auto=�6+   .��5      �� ��6   �� *
Messages+��5      �� 5      .R�5      �� 5      ��5      �� 5      .R�5      �� $��5q�5      
��� �� �� CornerRadius$ 5��5      ._�5      �� $	��268��5   !   $��8q�5   !   ��5    !   �� *Msg+5!      5"      5$      5%      �� 5&   
   $��1��5'      $��10q�5(      $��Center=�5)       �� Orientation$ 
Horizontal=�5*      .+�5+      �� $	��500��5,      $	��100��5-      
��� � �$��1q�5/      $ 5��50      ._�51      �� $	��500��52      $	��100��53      $��Bottom=�54      
������ ��56      �� *SendMessage+ �� NotifyOnSourceUpdated$
 True��57      �� 58      $	��100��59      $��30��5:      $��10q�5;      $��Bottom=�5<      $��发送消息��5>      ��5=      �� *SendCommand+5>      5?      5@      5A      