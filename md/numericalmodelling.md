---
title: Numerical Modelling
output: html_document
---

Numerical modelling is a technique used by water resources practitioners that incorporates the most up-to-date theories that attempt to formulate hydrological processes. Building a numerical model of hydrological processes is accomplished in four steps:

1. First is the conceptualization of the dominant processes that are observed in nature including physical processes that dictate groundwater movement and the interrelationship between the soil, vegetation and atmosphere; chemical processes that are dependent on the physical processes (e.g. solute transport); and biological processes that are dependent on both the physical and chemical processes for survival.  This knowledge base makes up the *__"perceptual model"__* of the hydrological system;
1. Secondly, an attempt is made to formulate these perceptual processes as a set of mathematical expressions or *__"formal models"__* (see examples below);
1. Third is the combination of this set of formal models into an algorithm or *__"procedural model"__* that distributes the processes and their interactions accordingly in space and time;
1. Lastly, the procedural model is built into computer code and thus creates a *__"numerical model"__* to be run on high-performance machines that allows the practitioner to make projections as to how the hydrological system is operating, and how the system can potentially be affected when stressed by changing conditions.  Such conditions may include the effects of drought on water supply and ecological resilience, the extent of impact of a toxic spill, or the change that can be anticipated when land is developed or mined for resource extraction, etc.

There exists many numerical model codes used in practice with varying sophistication. The choice of the model, and hence the set of procedures used, depends on the scale and scope of the environmental system the modeller wishes to analyze and the conceptualization they deem fit to answer the questions at hand.

### Some Examples of Formal Models

* [Evaporation](/info/evaporation/)
* [Solar Radiation Transmittance](/info/solarradiation/)    
* [Geothermal modelling](/info/geothermal/)
* [Multiphase flow through porous media](/info/pmflow/)
* [Shallow water overland flow](/info/lia/)



# Numerical Model Custodianship Program

The ORMGP has established a numerical modelling sharing process to assist consultants in moving forward on various projects by making use of previous interpretations/work. The mission of the [**ORMGP numerical model custodianship program**](/snapshots/md/numerical-model-custodianship-program.html) is to provide numerical models to any consultant undertaking work within our partners' jurisdiction.  

Users (e.g., consultants) are expected to review the shared models' suitability to their intended application. Considering the age of the models, the expertise who constructed the model, the model's original intent, etc., it is the responsibility of the user to determine whether there is an approach more suitable than just using the model files as delivered. For instance, some consultants have only selected specific model file components (i.e., hydraulic conductivity distribution or geological layering, thicknesses etc.) to complete their task.

Users are free to update/modify the model in the hopes that the refinements are shared with the ORMGP in return for the sake of preserving knowledge.

Often, within any geographical area of a new/proposed consulting project, there are several models that could be used to aid the new project. Given the nature of the proposed project (e.g., water supply, contamination investigation, proposed land development, etc.) The ORMGP may suggest the most appropriate model or the consultant is free to select any or all models, where available.  

The idea is that model sharing could perhaps reduce duplication of effort, thereby lowering consulting costs by providing previous modelling insights in a transferable digital format.  Given that every project is different, the likelihood that a model can be transferred to address the needs of a another study may be quite low.
  
* More information on the Numerical Model Custodianship Program model archive [*__here__*](/snapshots/md/numerical-model-custodianship-program.html).
* See also [*A Guide for Actively Managing Watershed-Scale Numerical Models in Ontario*](https://www.oakridgeswater.ca/_files/ugd/4a0a6e_c41c71a481ea4657806e1fbb0c912f7a.pdf) — model management guidance (2017)

<br>

To view the numerical models available within the ORMGP Numerical Model Custodianship Program, <a href="https://maps.oakridgeswater.ca/Html5Viewer/index.html?viewer=ORMGPP&run=NumericalModels" target="_blank">Click here</a>.

<br>

# Water Budgeting within the ORMGP

The ORMGP also maintains a set of hydrological (a.k.a., Water-Budget, Water-Balance) models in-house. These model are build using either [off-shelf model codes](/interpolants/modelling/ravenmodel.html) or a *procedural model* that has been [custom designed](/interpolants/modelling/waterbudgetmodel.html) for the the needs of our program partners. The latter model is an *"integrated"* model meaning that it takes an explicit account of the groundwater system's influence on runoff generation. This is in stark contrast with most hydrological models that conceptualize the groundwater system independent of surface water processes--an untenable assumption within our southern Ontario jurisdiction.

As the custodians of groundwater models, long term average groundwater recharge (i.e., water that percolated through the soil zone down to the water table) at large spatial scales is of great importance. Experience has shown that using traditional (i.e., off-shelf) hydrological model codes overestimates rates of recharge especially in [areas of high groundwater tables](/watertable/). The consequence, however, is that the water budget, as commonly understood, needs a rethink. For instance, consider the the 2 water balance equations:

$$ P=E+R+G \qquad\text{vs.}\qquad P+D=E+R+G $$

The left-hand equation is the familiar water balance equation: Precipitation $(P)$ at some particular location equals any loss due to evaporation $(E)$, runoff $(R)$ and groundwater recharge $(G)$. (Here it is assumed that we're looking at a long-term water balance where changes in storage are negligible.)

In the integrated case (right-hand equation) modellers now have to contend with groundwater seeping to the ground surface, groundwater discharge $(D)$. This term is added to precipitation and has the effect of increasing runoff $(R)$ by simultaneously adding to precipitation $(P)$ while reducing rates of recharge $(G)$. 

$D$ is an important term, it is why wetlands are *wet* and why many watercourses can maintain streamflow even during times of prolonged dry-spells. To illustrate, the map below is used to contrast groundwater interaction with an off-shelf hydrological model. Notice the emergence of stream networks:


<iframe src="https://golang.oakridgeswater.ca/pages/Raven23WB-compare.html" width="100%" height="400" scrolling="no" allowfullscreen></iframe>

_Comparison of groundwater recharge simulated using a hydrologial model (left) vs. an integrated groundwater/surface water model (right). Units are in millimetres per year (mm/yr). Notice how in the integrated case much of the low lying areas exhibit negative "net recharge", meaning that these are area where water tables are high and seepage to the surface is being simulated._

<br>


# More Information

For more general information on Numerical Modelling activities at the ORMGP, <a href="https://owrc.github.io/interpolants/#numerical-modelling" target="_blank">Click here</a>.

For details on our Long Term Integrated Water Budget Model, <a href="(https://owrc.github.io/interpolants/modelling/waterbudgetmodel.html" target="_blank">Click here</a>.