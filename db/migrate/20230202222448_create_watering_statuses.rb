# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :watering_statuses do
      primary_key :id
      column :name, String, null: false
      column :counts_as_watered, TrueClass
    end
  end
end
