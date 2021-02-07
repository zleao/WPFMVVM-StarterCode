using System;
using System.Collections.ObjectModel;
using Zza.Data;
using ZzaDashboard.Services;

namespace ZzaDashboard.Customers
{
    public class CustomerListViewModel : BindableBase
    {
        public event Action<Guid> PlaceOrderRequested = delegate { };
        public event Action<Customer> AddCustomerRequested = delegate { };
        public event Action<Customer> EditCustomerRequested = delegate { };

        private readonly ICustomersRepository _customersRepository;

        public ObservableCollection<Customer> Customers
        {
            get => _customers;
            set => SetProperty(ref _customers, value);
        }
        private ObservableCollection<Customer> _customers;

        public RelayCommand<Customer> PlaceOrderCommand { get; }
        public RelayCommand AddCustomerCommand { get; }
        public RelayCommand<Customer> EditCustomerCommand { get; }

        public CustomerListViewModel(ICustomersRepository customersRepository)
        {
            _customersRepository = customersRepository;

            PlaceOrderCommand = new RelayCommand<Customer>(OnPlaceOrder);
            AddCustomerCommand = new RelayCommand(OnAddCustomer);
            EditCustomerCommand = new RelayCommand<Customer>(OnEditCustomer);
        }

        public async void LoadCustomers()
        {
            Customers = new ObservableCollection<Customer>(await _repo.GetCustomersAsync());
        }

        private void OnPlaceOrder(Customer customer)
        {
            PlaceOrderRequested(customer.Id);
        }

        private void OnAddCustomer()
        {
            AddCustomerRequested(new Customer { Id = Guid.NewGuid() });
        }

        private void OnEditCustomer(Customer customer)
        {
            EditCustomerRequested(customer);
        }
    }
}