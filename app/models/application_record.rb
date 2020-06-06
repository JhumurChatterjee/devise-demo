class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def controller_class
    self.class.name.underscore.pluralize
  end

  def class_title
    self.class.name.underscore.humanize.titleize
  end
end
