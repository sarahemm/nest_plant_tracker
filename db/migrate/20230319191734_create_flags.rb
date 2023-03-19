# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :flags do
      primary_key :id
      column :name, String, null: false
      column :abbrev, String, null: false
      column :colour_name, String, null: false
    end
  end
end
