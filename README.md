# Julia Spring School 2026 サンプルコード

講義で使用するサンプルコードです。`topics/` 以下に各トピックのスクリプトがあります。

各トピックは独立した Julia プロジェクト環境（`Project.toml`）を持っています。

## 使い方

1. このリポジトリを GitHub 上で **Fork** する（右上の Fork ボタン）
2. fork した自分のリポジトリを clone する：

```bash
gh repo clone <自分のユーザ名>/julia_spring_school_2026_sample
cd julia_spring_school_2026_sample/topics/monte_carlo_pi

# 環境を復元
julia --project=. -e 'using Pkg; Pkg.instantiate()'

# ベンチマークを実行
julia --project=. bench.jl
```

改善したコードは `git commit` & `git push` で自分の fork に反映できます。
