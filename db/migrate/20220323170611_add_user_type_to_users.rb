# frozen_string_literal: true

class AddUserTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_type, :integer, default: 0
  end
end
