         ]   \        ��������H�#�j�{�8����Z�p            uclass Project < ActiveRecord::Base
  has_and_belongs_to_many :developers, :uniq => true
end
