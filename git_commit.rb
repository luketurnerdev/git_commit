#make a program that reminds the user every 30 mins to git commit

#Advanced: let user set the timer



#Then run a loop that constantly checks if 30 mins have passed. 
#   If so, display 'git commit' message.

#user can exit by CTRL+C but maybe this can change later.



def commit_check (wait_time)
    puts "We will wait #{wait_time} minutes between checks."
    #Start by getting the current time at instantiation of the program
    start_time = Time.now
    running = true
    
    puts "Running..."
    while running
        end_time = Time.now
        time_elapsed =  end_time - start_time;
        
        #If the amount of (seconds) has passed:
        #900 is 15 minutes
        if time_elapsed % wait_time * 60 == 0
    
            puts "Time to git commit!"
            
            system("say Time to git commit!")
            system("osascript display_dialog.scpt")
            puts "Type OK to acknowledge!"
            valid_input = false
            input = gets.chomp.downcase
    
            until valid_input == true
                if input == "ok"
                    valid_input == true
                    commit_check(wait_time)
        
                else
                    puts "Invalid input."
    
                end
            end
            
    
        end
    
            
    end
    end

    valid_time = false

    until valid_time == true 

        puts "How long do you want to wait (in minutes) ?"
            time = gets.chomp
            #check if this is an integer
            if time.scan(/\D/).empty?
                time = time.to_i
                valid_time = true
                commit_check(time)
            else 
                puts "Invalid."

            end

            
    end
    
    