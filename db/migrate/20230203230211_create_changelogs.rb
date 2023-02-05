# frozen_string_literal: true

ROM::SQL.migration do
  change do
      create_table :changelogs do
      primary_key :id
      column :plant_id, Integer, null: false
      column :logged_at, DateTime, null: false
      column :logged_by, String
      column :message, String, null: false
    end
  end
end
