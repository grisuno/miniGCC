# miniGCC Architecture and Execution Flows

[Back to index](index.md)

## Architecture Overview

3 components stacked in 1 dependency tiers (weighted Eades-Lin-Smyth ordering: arrows point from dependent to dependency, top to bottom). Labels are import counts, thick arrows the top quartile; 0 transitively implied edges are omitted. Dashed red arrows are upward dependencies: the smallest set of imports that closes every cycle and breaks the layering. Cyan components hold entry points. Interactive version: `readmenator-apidocs/index.html#/flows`.

```mermaid
flowchart TB
    classDef default fill:#111827,stroke:#38bdf8,color:#e5e7eb;
    subgraph lane_0["Tier 1"]
        direction LR
        n_d_tests["tests<br/>1 files, 1 symbols<br/>Business logic"]:::default
        n_d__root_["(root)<br/>4 files, 866 symbols<br/>Core / utility"]:::default
        n_c1["root<br/>1 files, 2 symbols<br/>Core / utility"]:::default
    end
```

---
