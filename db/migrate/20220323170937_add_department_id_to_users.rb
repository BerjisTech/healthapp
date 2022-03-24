# frozen_string_literal: true

class AddDepartmentIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :department_id, :uuid
  end
end
