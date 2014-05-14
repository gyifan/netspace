function[y] = g(t)
    y = heaviside(t).*cos(2*pi*t)
end