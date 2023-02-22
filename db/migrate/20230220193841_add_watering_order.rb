# frozen_string_literal: true

ROM::SQL.migration do
  change do
    alter_table :plants do
      add_column :watering_order, Integer
    end
  end
end
