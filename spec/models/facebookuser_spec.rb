# == Schema Information
#
# Table name: facebookusers
#
#  id               :integer          not null, primary key
#  provider         :string(255)
#  uid              :string(255)
#  name             :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe Facebookuser do
  pending "add some examples to (or delete) #{__FILE__}"
end
