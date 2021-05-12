class Customer < ApplicationRecord
    belongs_to :store

    def self.search(search)
        if search
            customer = Customer.find_by(email_address: search)
            if customer
                self.where(email_address: customer.email_address)
            else
                Customer.all
            end
        else
            Customer.all
        end
    end
end
