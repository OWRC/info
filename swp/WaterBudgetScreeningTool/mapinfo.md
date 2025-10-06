---
title: Stress Assessment Screening Tool
output: html_document
---


# Stress Assessment Screening Tool


## Demand Calculation

$$
    \text{Percent Demand}=\frac{Q_\text{Demand}}{Q_\text{Supply}-Q_\text{Reserve}}\times 100\%,
$$

where 
- $Q_\text{Demand}$
    - Maximum permitted rates, or
    - sum of municipal groundwater demand, other permitted use demands, and non-permitted demands such as private domestic wells and small-scale agriculture.
- $Q_\text{Supply}$
    - groundwater recharge (mm check)
- $Q_\text{Reserve}$
    - $10\%$ of baseflow (mm check)
    
    
## Aridity Index

$$
  AI = \frac{P}{PET}
$$

where $P$ is annual average precipitation and $PET$ is annual average potential evapotranspiration.

| Classification |	Aridity Index |
|---|---|
| Hyperarid | $AI$ < 0.05 |
| Arid 	0.05 < $AI$ < 0.20 |
| Semi-arid | 0.20 < $AI$ < 0.50 |
| Dry subhumid | 0.50 < $AI$ < 0.65 |
| Humid | $AI$ > 0.65 |


## Data collection

1. wells tied with permits are queried `qry.PTTW.well`
1. from the pool of all permits `qry.PTTW.all`, those tied permits are over written with `qry.PTTW.well`
1. equivalent max permitted rate `PTTW_MAX_PERMITTED_RATE_m3yr` are computed =`PTTW_MAX_L_DAY`x`PTTW_MAX_DAYS_YEAR`/1000
1. surface and ground water permits are divided equally
1. using max permitted x consumptive use factor