module UserAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      object_label_method :name

      list do
        field :id
        field :email
      end

      show do
        field :id
        field :email
      end

      edit do
        field :email
        field :password
        field :password_confirmation
      end
    end
  end
end
