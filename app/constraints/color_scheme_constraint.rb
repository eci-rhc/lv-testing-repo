class ColorSchemeConstraint
  def self.matches?(request)
    color_scheme = ProjectInitialDatum.first.color_scheme
    !color_scheme.blank? && color_scheme == "true"
  end
end