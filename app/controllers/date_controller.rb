class DateController < ApplicationController
    
    def show
        render json: hash_out_date(params[:date]), status: 200
    end
    
    private
    def hash_out_date(str)
        date = str
        datArr = date.split(' ')
        re = /[0-9]/
        months = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']
        
        unix_eval = date[0] =~ re
        nat_eval =  months.include? datArr[0].downcase
        valid_eval = !nat_eval && !unix_eval
        
        if valid_eval
            hash = 'Invalid Date'
        else
            unix = !!unix_eval ? date : Time.parse(date).to_i
            natural =  nat_eval ? date : DateTime.strptime(date,'%s').strftime('%B %d, %Y')
            hash = {:unix => unix.to_i, :natural => natural}
        end
        
        return hash
    end
    
end
