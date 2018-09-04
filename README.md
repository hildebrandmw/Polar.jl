# Polar coordinates for Phasors

View and enter complex numbers using polar coordinates, with degrees as well.

## Polar

```julia
polar(m,θ)
```
Create a complex number `x` where `abs(x) = m` and `angle(x) = θ`.

```julia
polar(x)
```
Return tuple `(m,θ)` where `m = abs(x)` and `θ = angle(x)`.

## Polard

Similar to `polar`, but using degrees instead of radians for all angles.

## Angled

```julia
angled(x)
```
Return the angle of a complex number `x` in degrees.
