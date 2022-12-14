---
subtitle: Total Evaporation
author: M.Marchildon
output: html_document
---

* TOC
{:toc}

# Total Evaporation

Total evaporation, i.e., loss from the computational element to the atmosphere, including plant transpiration, evaporation from land surface, soil pores and interception stores, is dependent on the current soil moisture storage ($S$), soil moisture capacity ($S_\text{max}$) and potential evapotranspiration ($E_p$), which is interpreted here as the capacity for the atmosphere to remove moisture from a saturated and replenishable surface.

Four varieties of potential evapotranspiration is explored, all varying in simplicity that depends on data availability. The first is dependent only on the day of year and an estimate of long-term average annual $E_p$. Based on assumed southern Ontario conditions (i.e., evaporation generally limited by soil moisture), the simplest method that can be used is the sine curve function given by:

$$
	E_p = \left(\overline{E}_p-E_\text{base}\right)\left[1+\sin\left(\frac{2\pi}{365}\left(i-\varphi\right)-\frac{\pi}{2}\right)\right]+E_\text{base},
$$

where $\overline{E}_p$ is the average annual $E_p$, $E_\text{base}$ is the minimum annual $E_p$, $i$ is the day of year from January 1st and $\varphi$ is the day offset from $i$ when $E_\text{base}$ occurs.

The next means of computing potential evaporation is based on the empirical Makkink (1957) method, which is functionally identical to the more common Priestly-Taylor (1972) approach. The main difference is that the Makkink method utilizes total incoming short-wave radiation, or "global radiation" ($K^\downarrow$), which is more readily available than net radiation $(Q^\ast)$ used in the Priestly-Taylor approach and other so-called combination approaches. In either case, both $K^\downarrow$ and $Q^\ast$ require observational measurements from sources that are rare and not adequately distributed at the regional scale the model is applied to. Instead, global radiation is approximated using a Prescott-type equation (Nov\'ak, 2012): <!-- pg.232 -->

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
	L^* &= f(T)f(e)f(n) \\
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


## Land surface corrections

From the high resolution of the model domain, each of the above $E_p$ functions are adjusted further by considering the slope and aspect of the model cell.

_**TODO**_



# Equations
_**TODO**_
# Potential Evapotranspiration Equations

## Glossary

potential evapotranspiration (mm/s);
 net radiation (W/m²)
 global radiation (W/m²)
 extraterrestrial solar radiation (W/m²)
 ground heat flux (W/m²)
 latent heat of vapouration (J/kg)
 Temperature (°C)
 Atmospheric pressure (kPa)
 Psychrometric Constant (kPa/K)
 Slope of the saturation vapour pressure vs. temperature curve (kPa/K)
 aerodynamic resistance (s/m)
 canopy/stomatal resistance (s/m)
 vapour pressure (kPa)
 saturated vapour pressure (kPa)
 density of air (g/m³)
 density of water ( ) (g/m³)
 specific heat capacity of air ( ) (J/g/K)

## Combination Equations

### Penman (1948) – based on a Dalton approach

### Penman-Monteith (Monteith, 1965)

### Priestly-Taylor (1972)

## Empirical Equations (generally for the estimation of daily )

### Makkink (1957)

background energy flux (W/m²)

### Turc (1961)

correction factor for when RH \<50%
 critical temperature (°C)

### Jensen Haise (1963)

critical temperature (°C) (Jensen Haise,1963)
 parameter (Jensen Haise,1963)

### Hargreaves (1975)

temperature (in degrees Celsius)
 temperature (in degrees Fahrenheit)
 Typically, and . Note

### Hargreaves-Samani (1982)/Hargreaves et.al. (1985)

### Thornthwaite (1948)

number of sunshine hours per 12 hours
 average temperature of month, (°C)
 temperature parameter
 parameter

### Hamon (1961)

parameter
 vapour density (g/m³)

### Tichomirov (Chrgijan, 1986) – for open water

parameter
 wind velocity coefficient
 average daily wind velocity (m/s)

## Other

### Aerodynamic Resistance

velocity at elevation
 zero-plane displacement height (m)
 roughness length (m)
 von-Karman's constant

### Sine-curve

Julian day
 day offset from Jan 1st when occurs
 average annual daily PET (mm/d)

### Enthalpy-Based Function 1

parameter
 atmospheric mixing depth (m)
 specific enthalpy of air (MJ/kg)
 density of air (g/m³)

### Enthalpy-Based Function 2

parameter
 atmospheric mixing depth (m)
 dry static energy of air (J/g)
 density of air (g/m³)

temperature in Kelvin
 enthalpy of air (J/g)
 gravitiational acceleration (m/s²)
 relative height of air parcel (m), assumed to be

## Relationships

### Unit conversions

### Physical properties

From Maidment (1992) – _Handbook of Hydrology_

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
