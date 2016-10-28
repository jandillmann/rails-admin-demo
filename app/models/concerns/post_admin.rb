module PostAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      object_label_method :title

      field :user_id, :enum do
        enum do
          # bindings is nil, so the following line does not work:
          # User.accessible_by(bindings[:controller].current_user).map { |user| [user.name, user.id] }
          User.all.map { |user| [user.name, user.id] }
        end
      end

      list do
        field :id
        field :user do
          filterable false
        end
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
