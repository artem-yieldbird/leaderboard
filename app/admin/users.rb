# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :title, :body

  index do
    column :name
    column :country
    column :score
  end
end
