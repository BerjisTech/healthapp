# frozen_string_literal: true

class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments, id: :uuid do |t|
      t.text :name

      t.timestamps
    end
  end
end
