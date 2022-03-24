# frozen_string_literal: true

class Appointment < ApplicationRecord
  has_rich_text :reason
end
