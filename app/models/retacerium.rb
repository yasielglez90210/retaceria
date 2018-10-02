class Retacerium < ApplicationRecord
  validates :name, presence: {message: "Es necesario el nombre del producto"}
  validates :cost, presence: {message: "Es necesario el campo Costo"}
  validates :rinde, presence: {message: "Es necesario el campo Rinde"}

  belongs_to :category
  has_many :has_colors
  has_many :colors, through: :has_colors
  after_create :save_colors
  after_update :update_colors

  def arraycolors=(value)
    @colors = value || []
  end

  def update_colors
    if @colors.any?
      has_colors = HasColor.where("retacerium_id = ?", self.id)
      has_colors.each do |item|
        item.destroy
      end

      @colors.each do |color_id|
        HasColor.create(color_id: color_id, retacerium_id: self.id)
      end
    end

  end


  private

  def save_colors
    # raise @categories.to_yaml
    if !@colors.nil?
      @colors.each do |color_id|
        HasColor.create(color_id: color_id, retacerium_id: self.id)
      end
    end
  end

end

