# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :plant_fertilizings do
      primary_key :id
      column :plant_id, Integer, null: false
      column :fertilized_at, DateTime, null: false
      column :fertilized_by, String
      column :notes, String
    end
  end
end
