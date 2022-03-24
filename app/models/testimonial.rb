# frozen_string_literal: true

class Testimonial < ApplicationRecord
    has_rich_text :comment
end
