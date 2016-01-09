class Page < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :permalink, presence: true, uniqueness: true
  validates :content, presence: true

  before_validation :generate_permalink, on: :create

  ##
  # Instance methods
  #

  # Generates and sets a `permalink` from the `title`.
  def generate_permalink
    if self.title.present? && self.permalink.blank?
      self.permalink = self.title.parameterize
    end
  end

end
