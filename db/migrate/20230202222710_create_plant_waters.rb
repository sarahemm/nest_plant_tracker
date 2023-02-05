# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :plant_waters do
      primary_key :id
      column :plant_id, Integer, null: false
      column :watered_at, DateTime, null: false
      column :watered_by, String
      column :watering_status_id, Integer, null: false
      column :notes, String
    end
  end
end
