require "rails_model_action_log/log.rb"
require "rails_model_action_log/action_log_callbacks_concern.rb"
module RailsModelActionLog
	ActiveRecord::Base.send(:include, ActionLogCallbacksConcerns)
end
