module ApplicationHelper
	def full_title(subtitle)
		base = "Rails Tutorial"
		subtitle.empty? ? base : "#{base} | #{subtitle}"
	end
end
