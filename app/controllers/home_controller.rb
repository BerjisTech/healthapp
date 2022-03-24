# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end
end
