module ApplicationHelper

	def flash_class(type)
		case type
		when :alert
			"alert"
		when :notice
			"info"
		else
			""
		end
	end


	def l_or_none(object)
	  l(object) rescue ''
	end 

	def kicker_name
		"Chase Briley"
	end
	
end
