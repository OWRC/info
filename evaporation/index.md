---
subtitle: Total Evaporation
author: M.Marchildon
output: html_document
---

* TOC
{:toc}


# Potential Evapotranspiration Equations

## Glossary

- $E_p$ potential evapotranspiration (mm/s);
- $E_a$ aerodymic evaporation flux (mm/s);
- $R$ net radiation (W/m²)
- $R_g$ global radiation (W/m²)
- $R_a$ extraterrestrial solar radiation (W/m²)
- $G$ ground heat flux (W/m²) --- *often assumed negligeable*
- $\lambda$ latent heat of vapouration (J/kg)
- $T$ temperature (°C)
- $T_c$ critical temperature (°C)
- $P$ atmospheric pressure (kPa)
- $\gamma$ Psychrometric Constant (kPa/K)
- $\Delta$ slope of the saturation vapour pressure vs. temperature curve (kPa/K)
- $r$ relative humidity
- $r_a$ aerodynamic resistance (s/m)
- $r_c$ canopy/stomatal resistance (s/m)
- $e$ vapour pressure (kPa)
- $e_s$ saturated vapour pressure (kPa)
- $\rho_a$ density of air (g/m³)
- $\rho_w$ density of water ($\approx$ 1e6 g/m³)
- $c_p$ specific heat capacity of air ($\approx$ 1.004 J/g/K)

[*see also physical relationships below.*](#physical-properties)

## Combination Equations

### Penman (1948) – based on a Dalton approach

$$
	\lambda E_p = \frac{\Delta(R-G) + \rho_a c_p(e_s-e)/r_a}{\gamma + \Delta}
$$

an equivalent form $(c_pP=\gamma\lambda\varepsilon)$

$$
	\lambda E_p = \frac{\frac{\Delta}{\gamma}(R-G) + \lambda E_a}{1+\frac{\Delta}{\gamma}}
$$



### Penman-Monteith (Monteith, 1965)

$$
	\lambda E_p = \frac{\Delta(R-G) + \rho_a c_p(e_s-e)/r_a}{\Delta + \gamma\left(1+r_s/r_a\right)}
$$


### Priestly-Taylor (1972)

$$
	\lambda E_p = \alpha\frac{\Delta}{\Delta + \gamma}(R-G)
$$

## Empirical Equations 

- generally for the estimation of daily potential $(E_p)$
- many use global radiation as opposed to net radiation

### Makkink (1957)

$$
	\lambda E_p = \alpha\frac{\Delta}{\Delta + \gamma}R_g+\beta
$$

where $\beta$ is the "background energy flux" (W/m²)

### Turc (1961)

$$
	\lambda E_p = \alpha C_\text{RH}\frac{T}{T + T_c}(R_g+\beta)
$$

where $C_\text{RH}$ is correction factor when `Relative Humidity` \<50%.


### Jensen Haise (1963)

$$
	\lambda E_p = \alpha(T + T_c)R_g
$$

> Jensen Haise (1963): $T_c\approx3.1$, $\alpha\approx 0.025$


### Hargreaves (1975)

$$
	\lambda E_p = \alpha T_\text{(°F)}R_g \\
	\lambda E_p = 1.8\alpha(T_\text{(°C)} + 17.78)R_g
$$

> often, $\alpha\approx 0.0075$

### Hargreaves-Samani (1982)/Hargreaves et.al. (1985)

$$
	\lambda E_p = 0.0023(T_\text{(°C)} + 17.78)\sqrt{T_\text{max}-T_\text{min}}\cdot R_a
$$


### Thornthwaite (1948)

$$
	E_p = 16\cdot S_a\left(\frac{10\cdot T_m}{I_a}\right)^a
$$

where $S_a$ number of sunshine hours per 12 hours, $T_m$ average temperature of month (°C), $I_a$ temperature parameter, and $a$ another parameter.

### Hamon (1961)

$$
	E_p = kS_a\rho_v
$$

where $k$ is a parameter and $\rho_v$ is vapour density (g/m³)




## Aerodynamic Equations


### Tichomirov (Chrgijan, 1986) – for open water

$$
	E_p = a(e_s-e)\cdot(1+bu)
$$

where $a$ is a parameter, $b$ is the wind velocity coefficient and $u$ is average daily wind velocity (m/s)


###  the advective term [kg/m²/s] of Penman (1948)

$$
	E_a = \rho_a\frac{\varepsilon}{P}d_a\cdot f(u)
$$

where $d_a=(1-r)e_s$ is the vapour deficit [Pa], $e_s=f(T_a)$, the wind-function $f(u)=a+ub$ [m/s], where $u$ is wind speed [m/s].

#### power form

$$ f(u)=au^b $$

This is the power form of open water evaporation $(E_o)$ used by Penman (1948). It is worth noting that this is modified from Penman (1948) in that it is assumed $T_s \approx T_a$, that is the relationship between surface temperature and air temperature is captured by this empirical equation.



## Other

### Sine-curve

$$ 
	E_p = \left(\overline{E_p}-E_\text{min}\right)\left[1+\sin\left(\frac{2\pi}{365}\left(i-\varphi\right)-\frac{\pi}{2}\right)\right]+E_\text{min} 
$$

where $\overline{E\_p}$ is the average annual daily $E\_p$ (mm/d), $E\_\text{min}$ is the minimum annual $E\_p$, $i$ is the day of year from January 1st and $\varphi$ is the day offset from January 1st when $E\_\text{min}$ occurs $(\varphi\approx15)$.

### Enthalpy-Based Function 1

$$
	\lambda E_p = \alpha R_g + d_mh_a\rho_a
$$

where $\alpha$ is a parameter, $d_m$ is the atmospheric mixing depth (m), $h_a$ is the specific enthalpy of air (MJ/kg), and $\rho_a$ is the density of air (g/m³).

### Enthalpy-Based Function 2

$$
	\lambda E_p = \alpha R_g + d_ms_a\rho_a
$$

where the parameters are the same as above, only $s_a$ is the dry static energy of air (J/g) defined by:

$$
	s_a = c_pT_K+gz
$$

where $T_K$ is the air temperature in Kelvin, $cpT_K$ yields the enthalpy of air (J/g), $g$ is gravitiational acceleration (m/s²), and $z$ is the relative height of air parcel (m), assumed to be $\approx d_m/2$.


## Relationships

### Aerodynamic Resistance

$$
	r_a = \frac{\ln^2\left(\frac{z-d_e}{z_0}\right)}{\kappa^2u_z}
$$

where $u_z$ is the velocity (m/s) at elevation $z$, $d_e$ is the zero-plane displacement height (m), $z_0$ is the roughness length (m), and $\kappa$ is the von-Karman constant $(\approx 0.41)$.

### Unit conversions

$$
	R_\text{(m/s)}=\frac{R_\text{(W/m²)}}{\lambda\rho_w}
$$

where $R_\text{(m/s)}$ is radiation express in equivalent evaporation rates.

### Physical properties

From Maidment (1992) – _Handbook of Hydrology_

$$
	\lambda(T) = 2.501\times10^6-2631T
$$

$$
	e_s(T) = 0.6108\exp\frac{17.27T}{237.3+T}
$$

$$
	\Delta(T) = \frac{4098e_s}{(237.3+T)^2}
$$

$$
	\gamma(\lambda) = \frac{c_pP}{0.622\cdot\lambda}
$$

$$
	\rho_a(P,T) = 3486\frac{P}{275+T}
$$



<br> 

# Testing Evaporation Models


Four varieties of potential evapotranspiration are explored, all varying in simplicity that dependence on data availability. The first is dependent only on the day of year and an estimate of long-term average annual $E_p$. Based on assumed southern Ontario conditions (i.e., evaporation generally limited by soil moisture), the simplest method that can be used is the sine curve function given by:

$$
	E_p = \left(\overline{E_p}-E_\text{base}\right)\left[1+\sin\left(\frac{2\pi}{365}\left(i-\varphi\right)-\frac{\pi}{2}\right)\right]+E_\text{base},
$$

where $\overline{E_p}$ is the average annual $E_p$, $E_\text{base}$ is the minimum annual $E_p$, $i$ is the day of year from January 1st and $\varphi$ is the day offset from $i$ when $E_\text{base}$ occurs.

The next means of computing potential evaporation is based on the empirical Makkink (1957) method, which is functionally identical to the more common Priestly-Taylor (1972) approach. The main difference is that the Makkink method utilizes total incoming short-wave radiation, or "global radiation" $(K^\downarrow)$, which is more readily available than net radiation $(Q^\ast)$ used in the Priestly-Taylor approach and other so-called combination approaches. In either case, both $K^\downarrow$ and $Q^\ast$ require observational measurements from sources that are rare and not adequately distributed at the regional scale the model is applied to. Instead, global radiation is approximated using a Prescott-type equation (Nov\'ak, 2012): 

<!-- pg.232 -->

$$
	K^\downarrow = \left(a+b\frac{n}{N}\right)K_e,
$$

where $K_e$ is the extra-terrestrial short-wave flux (MJ/m²) that can be computed on the basis of solar irradiation theory that takes account of latitude, time of year and surface slope and aspect, $a$ and $b$ are empirical coefficients, ranging from 0.18 to 0.4 (mean $\approx$ 0.27) and 0.42 to 0.56 (mean $\approx$ 0.52), respectively, $n$ is the number of sunshine hours and $N$ is the total possible number of sunshine hours on a clear/cloudless day. The Makkink (1957) equation for $E_p$ [m/d] is given by:

$$
	E_p = \alpha\frac{\Delta}{\Delta+\gamma}\frac{K^\downarrow}{\lambda}+\beta,
$$

where $\lambda$ is the latent heat of vapouration for water (MJ/m³), $\Delta$ is the slope of the saturation vapour pressure vs. temperature curve (kPa/K), $\gamma$ is the psychrometric constant (kPa/K), and $\alpha$ and $\beta$ are empirical coefficients determined equal to 0.61 and $-1.2\times 10^{-4}$ m/d, respectively (Makkink, 1957). $\lambda$ and $\Delta$ are dependent on air temperature alone and $\gamma$ on air temperature and atmospheric pressure.

Realistically, southern Ontario models at this scale can only rely on daily min/max temperatures, rainfall and snowfall accumulations. Hourly data do exists that include wind speeds, humidity, pressure and visibility, but unfortunately, these data are not as readily available. For this reason, the current iteration of the model (version 1.0) will solely utilize daily data, and assuming that atmospheric pressure remains constant at 101.3 kPa, and the number of sunshine hours ($n=0$) on days with recorded precipitation, $n=1$ on days without. Future versions will compile more regional data that will relax these assumptions.

While it is understood great simplification is made by choosing such an empirical model (i.e., neglecting the impacts from wind speed, surface roughness, atmospheric moisture capacity, etc.) it is deemed appropriate for the purpose of this regional recharge model on the basis that in southern Ontario climates, $E_p$ is negligible during the late fall, winter, and early spring seasons, whereas the remaining season, actual evaporation is limited by moisture availability and not by evaporative potential, meaning that evaporative flux has a greater dependence on soil moisture accounting rather than the method chosen to estimate $E_p$.

Future models may also incorporate more sophisticated methods such as the combination approaches. These methods require knowledge of net radiation ($Q^\ast=K^\ast+L^\ast$), where $K^\ast=(1-\alpha)K_\text{in}$ is the net shortwave radiation, $\alpha$ is the surface albedo, and $L^\ast$ is the net long-wave radiation that can be approximated by (Budyko, 1974; Nov\'ak, 2012):

$$
\begin{align*}
	L^* &= f(T)\cdot f(e)\cdot f(n) \\
	&= \underbrace{\left(\varepsilon\sigma T^4\right)}_{\substack{\text{thermal} \\\text{radiation}}}
	\cdot \underbrace{\left(0.254-.005e\right)}_{\substack{\text{humidity} \\\text{effect}}} % Brunt-type equation pg.233
	\cdot \underbrace{\left[1-c'\left(1-\frac{n}{N}\right)\right]}_{\substack{\text{cloudiness} \\\text{effect}}},
\end{align*}
$$

where $\varepsilon$ is the emissivity of the evaporating surface ($0.96\leq\varepsilon\leq 0.98$), $\sigma=5.67\times 10^{-8}$ W m $^{-2}$ K $^{-4}$ is the Stefan-Boltzmann constant, $T$ is the temperature of the evaporating surface, $e$ is the water vapour pressure [hPa], and $c^\prime$ is an empircal constant dependent on latitude; $c'\approx0.7$ at $45^\circ$ latitude (Budyko, 1974). <!-- pg.59 -->

With net radiation, $E_p$ can be approximated first by using the Priestly-Taylor equation:

$$
	\lambda E_p = \alpha_{_{PT}}\frac{\Delta}{\Delta+\gamma}\left(Q^\ast-Q_G\right),
$$

where $\alpha_{_{PT}}$ is the Priestly-Taylor coefficient ($\approx 1.26$, but can vary depending on atmospheric state and surface saturation), and $Q_G$ is the gound heat flux, which is typically deemed negligible, but can be approximated by:

$$
	Q_G = -k_s\frac{\partial T}{\partial z},
$$

where $k_s$ is the thermal conductivity of the soil, and $\partial T/\partial z$ is the vertical temperature gradient near the surface.

Lastly, the most sophisticated method not only incorporates atmospheric conditions, but surface conditions as well that can be parameterized with the model. The Penman-Monteith equation... 

_**TODO**_





# References

Chrgijan A.Ch (1986) Physics of atmosphere. Izdat Moskovskovo Universiteta, Moskva (In Russian)

Hamon, W.R., 1961. Estimating potential evapotranspiration, Proc. Am. Soc. Civil Engrs., Jour. of the Hydraulics Div., 87, HY3, Pt. 1, pp. 107-120.

Hargreaves, G. H., 1975. Moisture availability and crop production. Transactions of the ASAE, 18(5), 980–984.

Hargreaves, G.L., G.H. Hargreaves, and J.P. Riley, 1985. Agricultural Benefits for Senegal River Basin. Journal of Irrigation and Drainage Engineering 111(2). pg. 113–124.

Hargreaves, G.H., Z.A. Samani (1982) Estimating Potential Evapotranspiration. Journal of the Irrigation and Drainage Division, 1982, Vol. 108, Issue 3, Pg. 225-230.

Jensen, M.E., H.R. Haise, 1963. Estimating Evapotranspiration from Solar Radiation. Proc. ASCE, J. of Irrigation and Drainage Div., 89:15-41.

Makkink, G.F. (1957) Testing the Penman formula by means of lysimeters. Int. J. Water Engng 11, 277–288.

Monteith, J.L. (1965) Evaporation and environment. Symposia of the Society for Experimental Biology 19: 205–224.

Penman, H.L. (1948) Natural evaporation from open water, bare soil and grass. Proceedings of the Royal Society of London. Series A, Mathematical and Physical Sciences 193(1032): 120-145.

Priestley, C.H.B. and R.J. Taylor, 1972. On the Assessment of Surface Heat Flux and Evaporation Using Large-Scale Parameters. Monthly Weather Review 100. pg. 81-92.

Thornthwaite, C.W., 1948. An Approach Toward a Rational Classification of Climate. Geographic Review 38. pp. 55–94.

Turc, L., 1961. Evaluation des besoins en eau d'irrigation, évapotranspiration potentielle, formulation simplifié et mise à jour. Annales Agronmique. 12, 13–49.
