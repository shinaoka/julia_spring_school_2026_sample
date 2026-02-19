# Monte Carlo π 推定（改善の余地あり！）

N = 10_000_000

function estimate_pi()
    inside = 0
    results = []   # Any 型の配列
    for i in 1:N
        point = rand(2)   # 毎回 2要素配列を生成
        if point[1]^2 + point[2]^2 <= 1.0
            inside += 1
        end
        # 途中経過を記録（100万点ごと）
        if i % 1_000_000 == 0
            push!(results, 4.0 * inside / i)
        end
    end
    return last(results)
end

println("π ≈ ", estimate_pi())
