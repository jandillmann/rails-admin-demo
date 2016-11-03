module PostAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      object_label_method :title

      # Example 1
      #
      # This configuration shows a text field instead of an enum to select the user
      # which seems to be the expected functionality:
      # https://github.com/sferik/rails_admin/blob/ffa30e0563e86a91bf88a312911b77d1bfffc2dc/app/assets/javascripts/rails_admin/ra.filter-box.js#L70
      #
      field :user do
        visible false

        # This doesn't seem to do anything, the filter text field is empty by default
        default_value do
          bindings[:controller].current_user.id
        end
      end

      # Example 2
      #
      # The following configuration throws an exception:
      #     NoMethodError - undefined method `current_user' for nil:NilClass
      #
      # field :user, :enum do
      #   visible false
      #   enum do
      #     controller = bindings[:controller]
      #     User.accessible_by(controller.current_user).map { |user| [user.name, user.id] }
      #   end
      # end

      # Example 3
      #
      # This shows a dropdown box to select a user to filter, but it shows all users,
      # not only the ones accessible by the current user.
      # (Which makes not much sense in this small example, but imagine a use case where
      # not all users can see all other user accounts.)
      #
      # Note that one can't use `field :user` here because the SQL query for filtering will fail
      # with the following exception:
      #    ActiveRecord::StatementInvalid - SQLite3::SQLException: no such column: posts.user:
      #    SELECT  "posts".* FROM "posts" WHERE ('t'='t') AND ((posts.user IN ('1')))  ORDER BY posts.id desc LIMIT 20 OFFSET 0
      #
      # Using :user_id for the enum (also below in the list block for the default filters) does work and filters the rows correctly.
      #
      # field :user_id, :enum do
      #   visible false
      #   pretty_value do
      #     bindings[:object].try(:name)
      #   end
      #   enum do
      #     User.all.map { |user| [user.name, user.id] }
      #   end
      # end

      list do
        filters [:user] # use :user_id here for example 3
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
