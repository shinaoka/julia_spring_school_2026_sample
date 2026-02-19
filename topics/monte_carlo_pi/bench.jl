# estimate_pi() のベンチマーク
#
# BenchmarkTools の @btime では、引数を $ で補間すると
# ベンチマーク対象から変数の参照コストを除外できます。
# 例: @btime foo($x)  ← x のルックアップは計測外になる
# ここでは引数なし関数なので補間は不要です。

using Pkg
Pkg.activate(@__DIR__)

using BenchmarkTools

include(joinpath(@__DIR__, "estimate_pi.jl"))

println("\n--- Benchmark ---")
@btime estimate_pi()
