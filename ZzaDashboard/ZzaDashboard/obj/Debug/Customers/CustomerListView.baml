   M S B A M L   `   `   `  ����G  CZzaDashboard, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ZzaDashboard.CustomersZzaDashboard.Customers  5      -    'ZzaDashboard.Customers.CustomerListView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:ZzaDashboard.Customers     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  5      *  $Microsoft.Xaml.Behaviors.Interaction    Triggers  5
      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ Loaded��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ LoadCustomers��6:      TargetObject 6!   �� 6:   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      �� $��Add Customer��6   $
��Left=�5      ��5      �� *AddCustomerCommand+5      5      &   System.Windows.Controls.DataGrid  5   
      AutoGenerateColumns .     CanUserAddRows .  $��1��5      ��5      �� *	Customers+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6B   1	  +System.Windows.Controls.DataGridBoundColumn
 	  Binding
 6%   �� *
FullName+6B   4
  .System.Windows.Controls.DataGridTemplateColumn
  5!      $
	 Auto 6)    
  CellTemplate 5"      �� 5#      .R�5$      �� $��Place Order��6%   $��5q�5'   %   ��5%   %   �� *DataContext.PlaceOrderCommand+ �� RelativeSource ��  �� AncestorType"  ��5&   %   �� 5'   %   5(      5*      
  5+      $
	 Auto 6)    5,      �� 5-      .R�5.      �� $
��Edit��6%   $��5q�51   %   ��5/   %   �� *!DataContext.EditCustomerCommand+ �� "  ��50   %   �� 51   %   52      54      56      57      58      