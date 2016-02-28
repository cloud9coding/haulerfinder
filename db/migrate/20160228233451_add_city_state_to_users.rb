class AddCityStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city_state, :string
  end
end
