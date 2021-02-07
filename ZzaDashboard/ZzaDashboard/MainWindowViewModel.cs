using System;
using Zza.Data;
using ZzaDashboard.Customers;
using ZzaDashboard.OrderPrep;
using ZzaDashboard.Orders;

namespace ZzaDashboard
{
    public class MainWindowViewModel : BindableBase
    {
        private readonly CustomerListViewModel _customerListViewModel = new CustomerListViewModel();
        private readonly OrderPrepViewModel _orderPrepViewModel = new OrderPrepViewModel();
        private readonly OrderViewModel _orderViewModel = new OrderViewModel();
        private readonly AddEditCustomerViewModel _addEditCustomerViewModel = new AddEditCustomerViewModel();

        public BindableBase CurrentViewModel
        {
            get => _currentViewModel;
            set => SetProperty(ref _currentViewModel, value);
        }
        private BindableBase _currentViewModel;
        
        public RelayCommand<string> NavCommand { get; }

        public MainWindowViewModel()
        {
            NavCommand = new RelayCommand<string>(OnNav);

            _customerListViewModel.PlaceOrderRequested += NavToOrder;
            _customerListViewModel.AddCustomerRequested += NavToAddCustomer;
            _customerListViewModel.EditCustomerRequested += NavToEditCustomer;
            _addEditCustomerViewModel.Done += NavToCustomerList;
        }

        private void OnNav(string destination)
        {
            switch (destination)
            {
                case "orderPrep":
                    CurrentViewModel = _orderPrepViewModel;
                    break;
                case "customers":
                    CurrentViewModel = _customerListViewModel;
                    break;
                default:
                    throw new NotSupportedException($"Destination not supported: {destination}");
            }
        }

        private void NavToOrder(Guid customerId)
        {
            _orderViewModel.CustomerId = customerId;
            CurrentViewModel = _orderViewModel;
        }

        private void NavToAddCustomer(Customer customer)
        {
            NavToAddEditCustomer(customer, false);
        }

        private void NavToEditCustomer(Customer customer)
        {
            NavToAddEditCustomer(customer, true);
        }

        private void NavToAddEditCustomer(Customer customer, bool isEditMode)
        {
            _addEditCustomerViewModel.EditMode = isEditMode;
            _addEditCustomerViewModel.SetCustomer(customer);
            CurrentViewModel = _addEditCustomerViewModel;
        }
        
        private void NavToCustomerList()
        {
            CurrentViewModel = _customerListViewModel;
        }
    }
}
