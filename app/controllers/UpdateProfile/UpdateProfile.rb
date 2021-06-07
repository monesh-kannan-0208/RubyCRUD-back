require 'pg'
require 'hanami/controller'
require 'json'

module UpdateProfile
    class UpdateProfile
        include ::Hanami::Action
        def call (env)
            response = request.body.read
            response = request.body.rewind
            updateDetails = JSON.parse(response)
            name = updateDetails['profileDetails']['name']
            email = updateDetails['profileDetails']['email']
            password = updateDetails['profileDetails']['password']
            empcode = updateDetails['profileDetails']['empcode']
            address = updateDetails['profileDetails']['address']
            joiningdate = updateDetails['profileDetails']['joiningdate']
            begin
                con = PG.connect :host => 'ec2-34-206-8-52.compute-1.amazonaws.com', :dbname => 'd18gs9nb0qhlph', :user => 'dhnyhcjisebrfv', :password => 'db684610afc0a65090086eed1f859c37719f23c5bda4ddc4709fc1f5ed585b73'
                exist = con.exec "update emp set name = '#{name}',password = '#{password}',empcode = '#{empcode}',address = '#{address}',joiningdate = '#{joiningdate}' where email = '#{email}'"
                
                    puts "Updated User Details"

                    empDetails = con.exec "select * from emp where email='#{email}'"

                    updated = "true"
                    name = empDetails[0]["name"]
                    email = empDetails[0]["email"]
                    password = empDetails[0]["password"]
                    empcode = empDetails[0]["empcode"]
                    address = empDetails[0]["address"]
                    joiningdate = empDetails[0]["joiningdate"]
                    
                    response = {'updated' => updated, 'name' => name, 'email' => email, 'password' => password, 'empcode' => empcode, 'address' => address, 'joiningdate' => joiningdate}
                    
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