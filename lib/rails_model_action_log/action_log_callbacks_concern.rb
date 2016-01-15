module ActionLogCallbacksConcerns extend ActiveSupport::Concern

	included do
		after_create :log_create
		after_update :log_update
		after_destroy :log_destroy
	end

	def log_create(action="create")
		Log.create! ({log_model_name: self.class.name, action: action,log_model_id: self.id, created_at: Time.now, content: self.to_json}) unless self.class.name.eql?("Log") 
	end

	def log_update
		log_create("update")
	end

	def log_destroy
		log_create("destroy")
	end

end