# frozen_string_literal: true

ROM::SQL.migration do
  change do
    alter_table :plants do
      add_column :fertilizer_id, Integer
    end
  end
end
