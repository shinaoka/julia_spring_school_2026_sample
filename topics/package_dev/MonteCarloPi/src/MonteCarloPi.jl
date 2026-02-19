module MonteCarloPi

export estimate_pi

"""
    estimate_pi(N::Int) -> Float64

Monte Carlo 法で π を推定する。

単位正方形 [0,1]² に N 個の乱数点を投げ、
単位円内に落ちた割合から π ≈ 4 × (inside / N) を計算する。
"""
function estimate_pi(N::Int)
    inside = 0
    for _ in 1:N
        x, y = rand(), rand()
        if x^2 + y^2 <= 1.0
            inside += 1
        end
    end
    return 4.0 * inside / N
end

end # module
