# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :plants do
      primary_key :id
      column :active, TrueClass
      column :science_name, String
      column :plant_type, String
      column :our_name, String, null: false
      column :location_id, Integer, null: false
      column :water_freq, Integer
      column :fertilizer_notes, String
      column :watering_notes, String
      column :general_notes, String
    end
  end
end
