# create_table: This method is used to create a new database table along with its columns.

# A Migration can use the following methods to create or modify tables:
# add_column
# change_column
# rename_column
# remove_column
# add_reference
# add_index: Used to add an index to a column in a table, which can improve the performance of queries.

class AddDescriptionToClubs < ActiveRecord::Migration[7.1]
  def change
    add_column :clubs, :description, :text
  end
end
