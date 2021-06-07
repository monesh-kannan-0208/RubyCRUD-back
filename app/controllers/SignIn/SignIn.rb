require 'pg'
require 'hanami/controller'
require 'json'

module SignIn
    class SignIn
        include ::Hanami::Action
        def call (env)
            temp = request.body.read
            #response = request.body.rewind
            
            signinDetails = JSON.parse(temp)
            puts signinDetails['signinDetails']['email']
            email = signinDetails['signinDetails']['email']
            password = signinDetails['signinDetails']['password']

            begin
                con = PG.connect :host => 'ec2-34-206-8-52.compute-1.amazonaws.com', :dbname => 'd18gs9nb0qhlph', :user => 'dhnyhcjisebrfv', :password => 'db684610afc0a65090086eed1f859c37719f23c5bda4ddc4709fc1f5ed585b73'
                exist = con.exec "select exists (SELECT * FROM Emp WHERE email='#{email}' and password = '#{password}')"

                if exist[0]["exists"]=='t'
                    puts "Existing User"

                    empDetails = con.exec "select * from Emp where email='#{email}' and password='#{password}'"

                    validation = "true"
                    name = empDetails[0]["name"]
                    email = empDetails[0]["email"]
                    password = empDetails[0]["empcode"]
                    empcode = empDetails[0]["empcode"]
                    joiningdate = empDetails[0]["joiningdate"]

                    temp = {'validation' => validation, 'name'=> name, 'email'=> email, 'password'=> password, 'empcode' => empcode}

                    puts temp 
                    res = JSON.generate(temp)

                    self.body = res
                end

            rescue PG::Error => e
                puts e.message
                
            ensure 
                con.close if con
            end
        end
    end
end