# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :desc, :name

  validates :name, presence: true, length: { maximum: 20 }
  validates :desc, presence: true, length: { maximum: 100 }

  default_scope order: 'projects.created_at DESC'
end
