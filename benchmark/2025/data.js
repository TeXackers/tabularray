window.BENCHMARK_DATA = {
  "lastUpdate": 1775338526613,
  "repoUrl": "https://github.com/TeXackers/tabularray",
  "entries": {
    "Tabularray Benchmark in TeX Live 2025": [
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
        "date": 1775338526149,
        "tool": "customSmallerIsBetter",
        "benches": [
          {
            "name": "compile tabularray with pdflatex",
            "value": 0.99843672959244,
            "unit": "ratio",
            "extra": "current time : previous time = 0.99648284912109 : 0.99804306030273"
          },
          {
            "name": "compile tabularray with xelatex",
            "value": 0.99192101160575,
            "unit": "ratio",
            "extra": "current time : previous time = 1.0922164916992 : 1.1011123657227"
          },
          {
            "name": "compile tabularray with lualatex",
            "value": 1.0269112589298,
            "unit": "ratio",
            "extra": "current time : previous time = 1.6242218017578 : 1.581657409668"
          }
        ]
      }
    ]
  }
}