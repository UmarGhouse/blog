module ApplicationHelper

	def alerts(type)
			if type == notice
				div_class = "alert alert-success alert-dismissible fade show"
			elsif type == alert
				div_class = "alert alert-danger alert-dismissible fade show"
			end
	
			if type
				content_tag(:div, class: div_class, role: "alert") do
					
					content_tag(:div, type.to_s) + # The plus is used to have multiple items within the content_tag
	
					content_tag(:button, type: "button", class: "close", data: { dismiss: "alert" }, "aria-label": "Close") do
						content_tag(:span, "&times;".html_safe, "aria-hidden": true)
					end
				end
			end
		end
end
