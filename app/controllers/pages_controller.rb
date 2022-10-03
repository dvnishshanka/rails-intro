class PagesController < ApplicationController
  def home
    end

  def about
     @members=["ann", "saraa", "vidu", "mali"]

     search =params[:member]
     if search
     @members = @members.select do |member|
      member.start_with? search.downcase
     end
    end
  end

  def contact
  end

end
