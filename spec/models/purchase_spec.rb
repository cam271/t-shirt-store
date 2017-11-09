# == Schema Information
#
# Table name: purchases
#
#  id          :integer          not null, primary key
#  products_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Purchase do
  pending "add some examples to (or delete) #{__FILE__}"
end
