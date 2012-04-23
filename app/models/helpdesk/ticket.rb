module Helpdesk
  class Ticket < ActiveRecord::Base
    attr_accessible :description, :requester_id, :assignee_id, :subject, :status, :issue_type
    belongs_to :requester, :class_name => Helpdesk.user_class.to_s
    belongs_to :assignee, :class_name => Helpdesk.user_class.to_s
    
    scope :unassigned, where('assignee_id is null')

    state_machine :status, :initial => :new do

    end
  end
end