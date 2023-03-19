# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :plant_flags do
      primary_key :id
      column :plant_id, Integer, null: false
      column :flag_id, Integer, null: false
    end
  end
end
