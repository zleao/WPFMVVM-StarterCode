   M S B A M L   `   `   `  ����G  CZzaDashboard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ZzaDashboard.CustomersZzaDashboard.Customers  5      C ?Zza.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5(clr-namespace:Zza.Data;assembly=Zza.DataZza.Data 5      A%clr-namespace:ZzaDashboard.ConvertersZzaDashboard.Converters  5      0    *ZzaDashboard.Customers.AddEditCustomerView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:ZzaDashboard.Customers     5      9Data(clr-namespace:Zza.Data;assembly=Zza.Data     5      <
converters%clr-namespace:ZzaDashboard.Converters     5        � 	Resources  5      C   =ZzaDashboard.Converters.NegatableBooleanToVisibilityConverter    BooleanToVisibilityConverter ( $InvertedBooleanToVisibilityConverter   Negate �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value �� Self	 �� RelativeSource
 �� Path��%  &	        &	      '�� -       5   
   6;     5   
    . 6h   �� 5   
   " ��6    5      P� 5       �@=�HasError . . �5      ��  �@�ToolTip 5      �� #	 Z $2
 ,(Validation.Errors).CurrentItem.ErrorContent�5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   � -   5         �Name$ grid1��5      $
��Left=�6?   $��	10,10,0,0q�6Z   $	��Top=�6m    � DataContext 6   �� *
Customer+ � ColumnDefinitions 5      �� 5       $
��Auto �6#   �� 5!      $
��Auto �6#    5#      �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    .+�5*      �� $��First Name:��6   $��0��6*   $
��Left=�6:   $��3q�6U   $��0��6`   $��Center=�6m   �� 5+      -   5         ��Name$ firstNameTextBox��5+      $��1��60   $
��Left=�6@   $��23��6[   $��3q�6g   $��0��6r   $��Center=�6�   $	��120��6�   ��6   �� *	FirstName+ �� Mode$ TwoWay=�" �� ValidatesOnNotifyDataErrors . 6�   �� 5,      $��
Last Name:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   �� 5-      -   5        $ lastNameTextBox��5-      $��1��6/   $
��Left=�6?   $��23��6Z   $��3q�6f   $��1��6q   $��Center=�6�   $	��120��6�   ��6~   �� *
LastName+$ TwoWay=� . 6�   �� 5.      $��Email:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��2��6[   $��Center=�6h   �� 5/      -   5        $ emailTextBox��5/      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��2��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Email+$ TwoWay=� . 6�   �� 50      $��Phone:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��3��6[   $��Center=�6h   �� 51      -   5        $ phoneTextBox��51      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��3��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Phone+$ TwoWay=� . 6�   52      � 54   
   $��1��6   .+�55      �� $
��Save��6   $
��Left=�57      $��25,5,0,0q�58      $	��Top=�59      $��75��5:      ��56      �� *SaveCommand+y�5;      �� *
EditMode+ �� 	Converter# [  �� 5<      $	��Add��6   $
��Left=�5>      $��25,5,0,0q�5?      $	��Top=�5@      $��75��5A      ��5=      �� *SaveCommand+y�5B      �� *
EditMode+# [ �� 5C      $��Cancel��6   $
��Left=�5E      $��	150,5,0,0q�5F      $	��Top=�5G      $��75��5H      ��5D      �� *CancelCommand+5H      5I      5J      5K      