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
	

	def nav_link(link_text, link_path)
	 	class_name = current_page?(link_path) ? 'active' : ''
	 	content_tag(:li, :class => class_name) do
	   	link_to link_text, link_path
	  end
	end
end
