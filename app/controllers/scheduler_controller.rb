class SchedulerController < ApplicationController
  def new
    if request.get?
      @schedulers = Array.new(3) {Scheduler.new}
      @robots = Robot.all
      @floors = Floor.all
      @movements_from = Movementfrom.all
      @movements_to = Movementto.all
      @freq = Frequency.all
    else
      file_content = ''
      params['schedulers'].each { |obj|
        file_content += obj[1]['shop_floor'] + "-" + obj[1]['robot'] + "-"+ obj[1]['move_from'] + "-"+ obj[1]['move_to'] + "-"+ obj[1]['frequency'] + "\n"
      }
     # my_file = RAILS_ROOT+'/instructions.txt'
     # f = File.open(my_file, 'w')
     # f.write(file_content)
     # f.close
     #
     #
    #  send_file my_file, :disposition => 'attachment', :encoding => 'utf8', :type => 'application/octet-stream'
    #  redirect_to :action => 'new'
     send_data(file_content,:type => 'application/octet-stream',:filename => 'instruction.txt',:disposition =>
'attachment')
    end

  end

end
