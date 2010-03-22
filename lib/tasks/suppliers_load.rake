
    desc %q(Load Products into Database)
    task(:suppliers_load => :environment) { |t,args|
         Supplier.create!(
                      :id             =>  1,
                      :name           =>  'Hydrogarden',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@hydrogarden.com',
                      :position       =>  1
      )

      Supplier.create!(
                      :id             =>  2,
                      :name           =>  'Garland',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@garland.com',
                      :position       =>  2
      )

      Supplier.create!(
                      :id             =>  3,
                      :name           =>  'Franchi',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@franchi.com',
                      :position       =>  3
      )

      Supplier.create!(
                      :id             =>  4,
                      :name           =>  'Nutriculture',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@nutriculture.com',
                      :position       =>  4
      )

      Supplier.create!(
                      :id             =>  5,
                      :name           =>  'Ikon',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@ikon.com',
                      :position       =>  5
      )

      Supplier.create!(
                      :id             =>  6,
                      :name           =>  'Unknown',
                      :description    =>  'Tight Gits',
                      :account        =>  1234567891,
                      :sort_code      =>  123456,
                      :bank_name      =>  'barclays',
                      :dialing_code   =>  44020,
                      :telephone      =>  3212345,
                      :email          =>  'sales@unknown.com',
                      :position       =>  6
      )
 
    } 
