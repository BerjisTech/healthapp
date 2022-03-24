# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :username, :user_type, :phone, :department_id
  #
  # or
  #

  # @user = User.new
  form do |f|
    f.inputs 'User' do
      f.label :username
      br
      f.text_field :username, class: 'form-control',
                              placeholder: 'Username'
      br
      f.label :email
      br
      f.email_field :email, class: 'form-control',
                            placeholder: 'Email'
      br
      f.label :user_type
      br
      f.email_field :user_type, class: 'form-control',
                                placeholder: 'o Patient, 1 Doctor'
    end
    br
    br
    f.submit 'Sign up', class: 'btn btn-primary btn-lg form-control'
  end

  permit_params do
    permitted = %i[email encrypted_password reset_password_token reset_password_sent_at remember_created_at
                   sign_in_count current_sign_in_at last_sign_in_at current_sign_in_ip last_sign_in_ip confirmation_token confirmed_at confirmation_sent_at unconfirmed_email username user_type phone department_id]
    permitted << :other if params[:action] == 'create'
    permitted
  end
end
