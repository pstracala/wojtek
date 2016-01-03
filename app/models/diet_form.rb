class DietForm
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :first_name, :last_name, :email, :target, :weight, :height, :terms, :obwod_pasa, :wake_up_time, :sleep_time, :training_count, :meals_count, :kind_of_work

  validates :first_name, :last_name, :email, :target, :weight, :height, :obwod_pasa, :wake_up_time, :sleep_time, :training_count, :meals_count, :kind_of_work, presence: true
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  validates :terms, :acceptance => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end