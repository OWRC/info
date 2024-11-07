---
title: Numerical Modelling
output: html_document
---

Numerical modelling is used by water resources practitioners to incorporate the most up-to-date theories in attempting to replicate hydrological processes on a computer system. Building a numerical model that incorporates hydrological processes is accomplished in four steps:

1. First is the conceptualization of the domain or geological framework through which the groundwater is flowing, as well as the dominant processes that are observed in nature including physical processes that dictate groundwater movement and the interrelationship between the soil, vegetation and atmosphere; chemical processes that are dependent on the physical processes (e.g. solute transport); and biological processes that are dependent on both the physical and chemical processes.  This knowledge base makes up the *__"perceptual model"__* of the hydrological system;
2. Secondly, an attempt is made to formulate these perceptual processes as a set of mathematical expressions or *__"formal models"__* (see examples below);
3. Third is the combination of this set of formal models into an algorithm or *__"procedural model"__* that distributes the processes and their interactions accordingly in space and time;
4. Lastly, the procedural model is built into computer code and thus creates a *__"numerical model"__* to be run on high-performance computers. The code allows the practitioner to better understand the hydrological flow system and how the system can potentially be affected when stressed by changing conditions.  Such stresses can be varied and may include for example, the effects of drought on water supply and ecological resilience, the extent of impact of a toxic spill, or the change that can be anticipated when land is developed or mined for resource extraction, etc.

Many numerical model codes exist, varying in sophistication, and all are used in practice. The choice of the model, and hence the set of procedures used, depends on the scale and scope of the environmental system and the problem that the modeller needs to analyze. The model selected must be able to incorporate the conceptualization they deem fit to answer the questions at hand.

### Some Examples of Formal Models

* [Evaporation](/info/evaporation/)
* [Solar Radiation Transmittance](/info/solarradiation/)    
* [Geothermal modelling](/info/geothermal/)
* [Multiphase flow through porous media](/info/pmflow/)
* [Shallow water overland flow](/info/lia/)



# Numerical Model Custodianship Program

The ORMGP has established a numerical model sharing process to assist consultants or other practitioners, in moving forward on various projects by making use of previous interpretations/work. The goal of the [**ORMGP numerical model custodianship program**](/snapshots/md/numerical-model-custodianship-program.html) is, where feasible and practical, to provide numerical models to consultant that are undertaking work within the ORMGP study area.  

Potential users of the numerical models held in the program are expected to review the shared models' suitability for the proposed application. Factors, including the age of the model, the original moddeller's expertise, and the model's original intent, etc. should all be considered in the process. Often, within any geographical area of a new/proposed consulting project, there may be several models that could be used. Given the nature of the proposed project (e.g., water supply, contamination investigation, proposed land development, etc.), ORMGP staff, given their knowledge with the models, may suggest the most appropriate model, however the consultant is free to select any of models available. 

Ultimately, it is the responsibility of the user to determine the model they wish to use, and whether the use of the model in its entirety is the most suitable approach. For instance, some consultants have only selected specific model file components (i.e., hydraulic conductivity distribution or geological layering, thicknesses etc.) to move forward with their project.

Users are free to update/modify the model, and any significant changes (e.g. based on new data) should be shared with the ORMGP so that the models can be updated and improve over time. 

As a central theme of the ORMGP, that is one of capitalizing on previous work, the idea behind the model custodianship program is to reduce duplication of effort, thereby lowering consulting costs.
  
* More information on the Numerical Model Custodianship Program model archive [*__here__*](/snapshots/md/numerical-model-custodianship-program.html).
* See also [*A Guide for Actively Managing Watershed-Scale Numerical Models in Ontario*](https://www.oakridgeswater.ca/_files/ugd/4a0a6e_c41c71a481ea4657806e1fbb0c912f7a.pdf) — model management guidance (2017)

<br>

To view the numerical models available within the ORMGP Numerical Model Custodianship Program, <a href="https://maps.oakridgeswater.ca/Html5Viewer/index.html?viewer=ORMGPP&run=NumericalModels" target="_blank">Click here</a>.

<br>

# Water Budgeting within the ORMGP

The ORMGP also maintains a set of hydrological (a.k.a., Water-Budget, Water-Balance) models in-house. These model have been built using either [off-shelf model codes](/interpolants/modelling/ravenmodel.html) or using a custom designed *procedural model* that meets the the needs of our program partners. The latter model is an *"integrated"* model meaning that it takes an explicit account of the groundwater system's influence on runoff generation. This is in stark contrast with most hydrological models that conceptualize the groundwater system independently of surface water processes--an untenable assumption within our southern Ontario jurisdiction.

As the custodians of groundwater models, long term average groundwater recharge (i.e., water that percolates through the soil zone down to the water table) at large spatial scales is of great importance. Experience has shown that using traditional (i.e., off-shelf) hydrological model codes leads to an overestimation of recharge rates, especially in [areas of high groundwater tables](/watertable/). The consequence, however, is that the water budget, as commonly understood, needs a rethink. For instance, consider the the two water balance equations:

$$ P=E+R+G \qquad\text{vs.}\qquad P+D=E+R+G $$

The left-hand equation is the familiar water balance equation: Precipitation $(P)$ at some particular location equals any loss due to evaporation $(E)$, runoff $(R)$ and groundwater recharge $(G)$. (Here it is assumed that we're looking at a long-term water balance where changes in storage are negligible.)

In the integrated case (right-hand equation) modellers now have to contend with groundwater seeping to the ground surface, groundwater discharge $(D)$. This term is added to precipitation and has the effect of increasing runoff $(R)$ by simultaneously adding to precipitation $(P)$ while reducing rates of recharge $(G)$. 

$D$ is an important term, it is why wetlands are *wet* and why many watercourses can maintain streamflow even during times of prolonged dry-spells. To illustrate, the map below is used to contrast groundwater interaction with an off-shelf hydrological model. Notice the emergence of stream networks:


<iframe src="https://golang.oakridgeswater.ca/pages/Raven23WB-compare.html" width="100%" height="400" scrolling="no" allowfullscreen></iframe>

_Comparison of groundwater recharge $(G)$ simulated using a hydrologial model (left) vs. net groundwater recharge $(G-D)$ an integrated groundwater/surface water model (right). Units are in millimetres per year (mm/yr). Notice how in the integrated case much of the low lying areas exhibit negative "net recharge", meaning that these are areas where water tables are high and seepage to the surface is being simulated._

<br>


# More Information

For details on our Long Term Integrated Water Budget Model, <a href="https://owrc.github.io/interpolants/modelling/waterbudgetmodel.html" target="_blank">Click here</a>.
