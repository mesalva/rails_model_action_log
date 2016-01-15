class LogTableGenerator < Rails::Generators::Base

	def generate
		system "rails g migration CreateLogs log_model_name:string action:string content:text log_model_id:integer created_at:datetime"
	end

end