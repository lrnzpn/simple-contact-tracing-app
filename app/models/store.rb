class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    has_many :customers
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    enum role: [:user, :admin]

    after_initialize :set_default_role, :if => :new_record?
    after_validation :set_slug, only: [:create, :update]

    def set_default_role
        self.role ||= :user
    end

    private

    def set_slug
        self.slug = name.to_s.parameterize
    end 
end
