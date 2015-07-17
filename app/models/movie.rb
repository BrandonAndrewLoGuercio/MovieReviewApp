class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

    has_attached_file :image, styles: { medium: "400x600#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search str
    srch = [
        "title",
        "actors",
        "director",
        "description"].map do |fld|
      "lower(#{fld}) LIKE :str"
    end.join " OR "

    Movie.where srch, str: "%#{str}%"
  end
end
