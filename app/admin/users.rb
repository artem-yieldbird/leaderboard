# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :title, :body

  show do
    attributes_table(:body, :created_at)

    panel 'Users' do
      table_for User do
        column(:name)
        column(:country)
        column(:score)
      end
    end
  end
end
