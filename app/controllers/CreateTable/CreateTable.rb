require 'pg'
require 'hanami/controller'

module CreateTable
    class CreateTable
        include ::Hanami::Action
        def call (env)
            begin
                con = PG.connect :host => 'ec2-34-206-8-52.compute-1.amazonaws.com', :dbname => 'd18gs9nb0qhlph', :user => 'dhnyhcjisebrfv', :password => 'db684610afc0a65090086eed1f859c37719f23c5bda4ddc4709fc1f5ed585b73'
                exist = "SELECT EXISTS (SELECT FROM information_schema.tables WHERE table_schema='public' AND table_name='Emp')"
                if exist[0]["exists"]=="f"
                    con.exec "CREATE TABLE Emp(Name VARCHAR(20), Email VARCHAR(30) PRIMARY KEY, Password VARCHAR(20), EmpCode VARCHAR(20), Address VARCHAR(50), JoiningDate  VARCHAR(20))"
                    puts "Table Created"
                else
                    puts "Table Exist"
                end
                rescue PG::Error => e
            
                    puts e.message 
                    
                ensure
                
                    con.close if con
                    
            end
        end
    end
end