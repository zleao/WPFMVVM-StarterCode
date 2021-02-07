using System;
using Zza.Data;
using ZzaDashboard.Services;

namespace ZzaDashboard.Customers
{
    public class AddEditCustomerViewModel : BindableBase
    {
        public event Action Done = delegate { };

        private readonly ICustomersRepository _customersRepository;
        
        public bool EditMode
        {
            get => _editMode;
            set => SetProperty(ref _editMode, value);
        }
        private bool _editMode;

        private Customer _editingCustomer = null;

        public SimpleEditableCustomer Customer
        {
            get => _customer;
            set => SetProperty(ref _customer, value);
        }
        private SimpleEditableCustomer _customer;

        public RelayCommand SaveCommand { get; }
        public RelayCommand CancelCommand { get; }

        public AddEditCustomerViewModel(ICustomersRepository customersRepository)
        {
            SaveCommand = new RelayCommand(OnSave, CanSave);
            CancelCommand = new RelayCommand(OnCancel);
            _customersRepository = customersRepository;
        }

        internal void SetCustomer(Customer customer)
        {
            _editingCustomer = customer;

            if (Customer != null)
            {
                Customer.ErrorsChanged -= RaiseCanExecuteChanged;
            }

            Customer = new SimpleEditableCustomer();
            Customer.ErrorsChanged += RaiseCanExecuteChanged;
            CopyCustomer(customer, Customer);
        }

        private void RaiseCanExecuteChanged(object sender, System.ComponentModel.DataErrorsChangedEventArgs e)
        {
            SaveCommand.RaiseCanExecuteChanged();
        }

        private void CopyCustomer(Customer source, SimpleEditableCustomer target)
        {
            target.Id = source.Id;
            if(EditMode)
            {
                target.FirstName = source.FirstName;
                target.LastName = source.LastName;
                target.Email = source.Email;
                target.Phone = source.Phone;
            }
        }

        private bool CanSave()
        {
            return !Customer.HasErrors;
        }

        private void OnSave()
        {
            Done();
        }

        private void OnCancel()
        {
            Done();
        }
    }
}
