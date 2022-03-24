# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    @appointments = Appointment.where(patient_id: current_user.id).or(Appointment.where(doctor_id: current_user.id))
  end
end
