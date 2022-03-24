# frozen_string_literal: true

class CreateTestimonials < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials, id: :uuid do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
