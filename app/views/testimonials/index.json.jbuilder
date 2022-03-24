# frozen_string_literal: true

json.array! @testimonials, partial: 'testimonials/testimonial', as: :testimonial
