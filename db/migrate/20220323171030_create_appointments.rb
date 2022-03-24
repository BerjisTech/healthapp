# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments, id: :uuid do |t|
      t.uuid :patient_id
      t.uuid :doctor_id
      t.text :reason
      t.datetime :time
      t.integer :status

      t.timestamps
    end
  end
end
