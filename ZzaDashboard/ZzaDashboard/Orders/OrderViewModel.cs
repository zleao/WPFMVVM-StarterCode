using System;

namespace ZzaDashboard.Orders
{
    public class OrderViewModel : BindableBase
    {
        public Guid CustomerId
        {
            get => _customerId;
            set => SetProperty(ref _customerId, value);
        }
        private Guid _customerId;
    }
}
