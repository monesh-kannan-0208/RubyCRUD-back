require 'pg'
require 'hanami/controller'
require 'json'

module DeleteProfile
    class DeleteProfile
        include ::Hanami::Action
        def call (env)
            response = request.body.read
            #response = request.body.rewind
            puts response
            deleteProfileDetails = JSON.parse(response)
            email = deleteProfileDetails['profileDetails']['email']
            puts email
            
            begin
                con = PG.connect :host => 'ec2-34-206-8-52.compute-1.amazonaws.com', :dbname => 'd18gs9nb0qhlph', :user => 'dhnyhcjisebrfv', :password => 'db684610afc0a65090086eed1f859c37719f23c5bda4ddc4709fc1f5ed585b73'
                exist = con.exec "DELETE FROM Emp where email = '#{email}'"
                    puts "Profile Is Deleted"

                    deleted = "true"
                                        
                    response = {'deleted' => deleted}
                    
                    puts response
                    res = JSON.generate(response)

                    self.body = res              
                
            
            rescue PG::Error => e
            
                puts e.message 

                    updated = "false"
                                      
                    response = {'updated' => updated}
                    
                    puts response
                    res = JSON.generate(response)

                    self.body = res
                
            ensure
            
                con.close if con
                
            end
        end
    end
end 