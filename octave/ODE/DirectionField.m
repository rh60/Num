function DirectionField (t, x, dx)
  h = t (2) - t (1);
  [t, x] = meshgrid (t, x);
  u = h * ones (size (t));
  v = dx (t, x) * h;
  quiver (t, x, u, v);
end


