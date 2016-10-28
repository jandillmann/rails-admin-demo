module PostAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      object_label_method :title

      list do
        field :id
        field :user
        field :title
      end

      show do
        field :id
        field :user
        field :title
        field :body
      end

      edit do
        field :title
        field :body
      end
    end
  end
end
