ActiveAdmin.register BidRequest do
  permit_params :pick_up_street, :pick_up_city_state, :pick_up_zip, :drop_off_street, :drop_off_city_state, :drop_off_zip, :pick_up_date, :pick_up_time, :drop_off_date, :drop_off_time

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
