# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :fertilizers do
      primary_key :id
      column :name, String, null: false
      column :freq, Integer, null: false
    end
  end
end
