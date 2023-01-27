module ApplicationHelper
	def convert_to_boolean(binary)
		if binary.getbyte(0).eql?(0)
    	return "No";
   	else
    	return "Yes"
   	end
	end

	def get_product_type_array(lot_collection_id)
	    prodcut_type_array = @udata.roles.map{|role| role.rds_lot_collections.where(:Lot_Collection_Id=>lot_collection_id)}.flatten.map{|x|x.Product_Type_Id.split(",")}.flatten.uniq
	    prodcut_type_array
	end
	def resource_name
	    :tbluser
	  end

	  def resource
	    @resource ||= Tbluser.new
	  end

	  def devise_mapping
	    @devise_mapping ||= Devise.mappings[:tbluser]
	  end
end
