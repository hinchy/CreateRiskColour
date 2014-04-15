# create_risk_colour.rb

class CreateRiskColour
  def self.getColour(score) 

    # Based on the risk score, create a colour somewhere between Red and Green
    if 0 <= score && score < 50
      green = 100
      red = 2 * score
    else
        red = 100
        green = 100 - 2 * (score-50)
    end
    colour = ("rgb("+((red*255)/100).to_s()+","+((green*255)/100).to_s()+",0)")

    return colour

  end  
end

