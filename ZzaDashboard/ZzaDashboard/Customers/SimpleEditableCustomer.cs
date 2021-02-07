using System;
using System.ComponentModel.DataAnnotations;

namespace ZzaDashboard.Customers
{
    public class SimpleEditableCustomer : ValidatableBindableBase
    {
        public Guid Id
        {
            get => _id;
            set => SetProperty(ref _id, value);
        }
        private Guid _id;

        [Required]
        public string FirstName
        {
            get => _firstName;
            set => SetProperty(ref _firstName, value);
        }
        private string _firstName;

        [Required]
        public string LastName
        {
            get => _lastName;
            set => SetProperty(ref _lastName, value);
        }
        private string _lastName;

        [EmailAddress]
        public string Email
        {
            get => _email;
            set => SetProperty(ref _email, value);
        }
        private string _email;

        [Phone]
        public string Phone
        {
            get => _phone;
            set => SetProperty(ref _phone, value);
        }
        private string _phone;
    }
}
