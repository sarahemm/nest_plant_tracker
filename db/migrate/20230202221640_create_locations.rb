# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :locations do
      primary_key :id
      column :name, String, null: false
    end
  end
end
