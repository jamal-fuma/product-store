         R   Q        ��������'����d�xo���9���            uclass Topic < ActiveRecord::Base
  has_many :replies, :dependent => :destroy
end
