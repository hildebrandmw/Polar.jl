module Polar

export polar, polard, angled, ∥

"""
    polar(m, θ)

Create a complex number `x` with `abs(x) = m` and `angle(x) = θ`.

    polar(x)

Return tuple `(m,θ)` where `m = abs(x)` and `θ = angle(x)`.
"""
polar(m,θ) = m * cos(θ) + im * m * sin(θ)
polar(x) = (abs(x), angle(x))

"""
    polar(m, θ)

Create a complex number `x` with `abs(x) = m` and `angled(x) = θ`. Note that
`θ` is in `degrees`.

    polar(x)

Return tuple `(m,θ)` where `m = abs(x)` and `θ = angled(x)` where `θ` is in 
`degrees`.
"""
polard(m,θ) = m * cosd(θ) + im * m * sind(θ)
polard(x) = (abs(x), angled(x))

"""
    angled(x)

Return the angle of `x` in `degrees`.
"""
angled(x) = (rad2deg ∘ angle)(x)


"""
    ∥(x...)

Compute the parallel impedance combination of `x...`.
"""
∥(x...) = inv(sum(inv.(x)))

end # module
