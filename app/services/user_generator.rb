# frozen_string_literal: true

class UserGenerator
  COUNTRY_CODES = %w[aa ab ae af ak am an ar as au av ay az ba be bg bh bi bm bn bo br bs bu ca ce ch co cr cs cu cv cy da de dh dv dz ee el en eo es et eu fa ff fi fj fl fo fr fy ga gd gi gl gn gr gu gv ha he hi ho hr ht hu hy hz ia id ie ig ii ik io is it iu ja jv ka kg kh ki kj kk kl km kn ko kr ks ku kv kw ky la lb le lg li ln lo lt lu lv ma mg mh mi mk ml mn mo mr ms mt my na nb nd ne ng nl nn no nr nu nv ny oc oj ol om or os pa pi pl pr ps pt pu qu rm rn ro ru rw sa sc sd se sg si sk sl sm sn so sq sr ss st su sv sw ta te tg th ti tk tl tn to tr ts tt tw ty ug uk ur uy uz va ve vi vo wa wo xh yi yo za zh zu].freeze
  CHARSET = (Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')).freeze
  DIVIDER = ', '

  def self.generate(n = nil)
    return user_string unless n

    n.times.map { user_string }.join(DIVIDER)
  end

  def self.user_string
    "('#{name}', '#{country}', #{score}, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
  end

  private

  def self.country
    COUNTRY_CODES.sample
  end

  def self.name
    Array.new(rand(5..10)) { CHARSET.sample }.join
  end

  def self.score
    rand 150..150_000_000
  end
end
