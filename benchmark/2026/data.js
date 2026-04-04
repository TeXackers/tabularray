window.BENCHMARK_DATA = {
  "lastUpdate": 1775338556253,
  "repoUrl": "https://github.com/TeXackers/tabularray",
  "entries": {
    "Tabularray Benchmark in TeX Live 2026": [
      {
        "commit": {
          "author": {
            "email": "pearatlatex@gmail.com",
            "name": "peaR",
            "username": "peaR-red"
          },
          "committer": {
            "email": "noreply@github.com",
            "name": "GitHub",
            "username": "web-flow"
          },
          "distinct": true,
          "id": "86bdf8faa6ced2584ad4340f5d825f2e0727e9d7",
          "message": "Merge pull request #639 from muzimuzhi/ci/fix-benchmark-tests\n\nFix benchmark generation",
          "timestamp": "2026-04-05T05:33:02+08:00",
          "tree_id": "71dde4da5ff912e257232cfd8112d94b3bbb0dcd",
          "url": "https://github.com/TeXackers/tabularray/commit/86bdf8faa6ced2584ad4340f5d825f2e0727e9d7"
        },
        "date": 1775338555131,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "compile tabularray with pdflatex",
            "value": 1.0079688075886,
            "unit": "ratio",
            "extra": "current time : previous time = 0.99109268188477 : 0.98325729370117"
          },
          {
            "name": "compile tabularray with xelatex",
            "value": 1.0083630186625,
            "unit": "ratio",
            "extra": "current time : previous time = 1.0031585693359 : 0.99483871459961"
          },
          {
            "name": "compile tabularray with lualatex",
            "value": 0.99784928487508,
            "unit": "ratio",
            "extra": "current time : previous time = 1.5681076049805 : 1.5714874267578"
          }
        ]
      }
    ]
  }
}