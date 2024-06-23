---
title: Geothermal transport modelling
output: html_document
---

* TOC
{:toc}

### Theory

Assumptions:

- incompressible flow
- fully saturated
- isothermal
- background/regional temperature $\approx 10^oC$

### Saturated flow:

$$
  \nabla\mathbf{q} + S_s\frac{\partial h}{\partial t} + Q=0
$$

where from Darcy's law:

$$
  \mathbf{q}=-\mathbf{K}\nabla h
$$

### Thermal transport in saturated porous media:
<!-- $$ -->
<!--   -\nabla(\mathbf{q}-\phi\mathbf{D}\nabla C) \pm Q_C=\phi R \left(\frac{\partial C}{\partial t} + \lambda C\right) -->
<!-- $$ -->

$$
  \frac{\partial \rho_b c_b T}{\partial t} = -\nabla\left[\mathbf{q} \rho_w c_w T -(k_b+\rho_bc_b\mathbf{D})\nabla T\right] + Q_T
$$

$$
  \frac{\partial \rho_b c_b T}{\partial t} = -\nabla\left[\mathbf{q} \rho_w c_w T -\lambda\nabla T\right] + Q_T
$$

$$
  \lambda=k_b+\rho_bc_b\mathbf{D}
$$

where $Q$ is the sink/source term (i.e., well pumping/injection) at temperature $Q_T$, $\mathbf{K}$ is the saturated hydraulic conductivity tensor, the dispersion tensor:

$$
  \mathbf{D}=f\left(\alpha_l, \alpha_{th}, \alpha_{tv}, D^*\right),
$$

bulk density:

$$
  \rho_b = (1-\phi)\rho_s+\phi \rho_w,
$$

and bulk heat capacity:

$$
  c_b = (1-\phi)c_s+\phi c_w.
$$

| Parameter     | Description               | Assigned value  |
|---------------|---------------------------|----------------:|
| $\alpha_l$    | longitudinal dispersivity |             1.0 |
| $\alpha_{th}$ | transverse horizontal dispersivity |             0.1 |
| $\alpha_{tv}$ | transverse vertical dispersivity |             0.1 |
| $D^*$         | effective molecular diffusion coefficient |   1.4e-7 |
| $k_b$         | bulk thermal conductivity      |    0.6 |


