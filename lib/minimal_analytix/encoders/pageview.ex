defimpl Jason.Encoder, for: MinimalAnalytix.Analytics.Pageview do
  def encode(value, opts) do
    Jason.Encode.map(Map.take(value, [:id, :domain, :path, :visitor, :occurred_at]), opts)
  end
end
