class SchedulerController < ApplicationController
  def new
    if request.get?
      @schedulers = Array.new(3) {Scheduler.new}
    else
      file_content = ''
      params['schedulers'].each { |obj|
        file_content += obj[1]['move_to'] + "-"+ obj[1]['move_from'] + "-"+ obj[1]['robot'] + "-"+ obj[1]['frequency'] + "\n"
      }
      my_file = RAILS_ROOT+'/instructions.txt'
      f = File.open(my_file, 'w')
      f.write(file_content)
      f.close
      send_file my_file, :disposition => 'attachment', :encoding => 'utf8', :type => 'application/octet-stream'
    #  redirect_to :action => 'new'

    end

  end

end
