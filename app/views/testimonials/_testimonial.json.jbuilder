json.extract! testimonial, :id, :name, :comment, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
