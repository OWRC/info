---
title: Specific Storage
output: html_document
---

### Specific Storage $(S_S)$

$$ S_S = \rho_w g(\alpha+n\beta) $$

- $\alpha$ &nbsp;&nbsp;&nbsp; compressibility of aquifer matrix $\approx 10^{-8}$ m²/N
- $\beta$ &nbsp;&nbsp;&nbsp; compressibility of water $\approx 4.6\times10^{-10}$ m²/N
- $n$ &nbsp;&nbsp;&nbsp; porosity
- $S_S < 0.0001 \text{ ft}^{-1}$


<br>

### Storativity $(S)$

**Confined aquifer**

$$ S = bS_S $$

- $b$ &nbsp;&nbsp;&nbsp; aquifer thickness
- $S<0.005$

**Unconfined aquifer**

$$ S = S_y + bS_S $$

- $b$ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; saturated thickness
- $S_y$  &nbsp;&nbsp;&nbsp; specific yield
- $0.02 < S < 0.3$
- $S_y \gg bS_S$ $\qquad\therefore S\approx S_y$

> In MODFLOW, $bS_S$ is referred to as the "storage coefficient".