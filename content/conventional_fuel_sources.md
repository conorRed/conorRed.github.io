# Combustion Science

_I think I lost all the previous notes_

* Most combustion systems reach temperatures much higher that 1250K past which stable products are formed. 
* Dissociation of the stable species occurs with a variety of radical reactions. 
* The flame temperature here is the heat added to the system for the reaction if we consider it in some volume.
* It's the temperature that they products exist in.
* The enthalpy of combustion is heavily dependent on the stoichiometry of the products as this is that main difference in
  enthalpy formation of the products to the reactants.
* The formation of products is dependent on flame temperature and pressure (as in what dissociation reactions take
  place).
* Looking at the reaction rate, if we take the collision frequency as $Z_{ab}$ with the fraction of molecules that have
  enough energy (changed by these collisions and/or changes in pressure) giving by the Boltzmann factor
  $exp(\frac{-E}{RT})$
* $$RR = Z_{ab}exp(\frac{-E}{RT})$$

# Glassman

## Chapter 3

* _Explosion limits_ are pressure-temperature boundaries for a specific fuel-oxidizer mixture ratio that separate the
  regions of slow and fast reactions.
* Explosions are considered a branched chain reaction phenomenon. Any minor change in the amount of radicals produced
  per the radical reaction in a system can cause a runaway process of heat generation speeding up reactions that develop
  explosive products at a greater speed than chain terminating steps.

### H2O2 reaction mechanism

* The dissociation of oxygen is less than hydrogen, so we assume the dissociation of hydrogen in some fashion to be the
  chain initiation step.
* Either 
  $ H_2 + M \rightarrow 2H + M $
  or
  $ H_2 + O_2 \rightarrow HO_2 + H $
  provide the radical that develops the OH, O and H radical pool.
* This radical pool develops by the reactions:
    * $H + O_2 \rightarrow O + OH$ 66kJ/mol exothermic
    * $O + H_2 \rightarrow H + OH$ 8 kJ/mol exothermic
    * $H_2 + OH \rightarrow H_2O + H$
    * $O + H_2O \rightarrow OH + OH$
* If the chain terminating step is considered as wall interactions with the radicals, then lower pressures would imply
  that collisions with the wall are more likely. This might explain the build up to the first limit.
* As we remain at constant temperature and the pressure keeps increasing, the next explosive limit might be explained by
  the introduction of third body collisions which can happen more frequently at higher pressures. Instead of the first
  reaction above kicking off pool production the reaction 
  $H + O_2 + M \rightarrow HO_2 + M$
  which creates a hydroperoxy radical, that is less reactive can be considered a 'sink' for H radicals.
* High temperatures are required again to make this radical produce other radicals rather than form stable products.
* HO2 is metastable and can build up, analysing the reactions it can have with the radical pool is important.
* There a pathways for chain propagation with HO2 as well and they can be very exothermic.
* In real systems, air and fuel interacting result in reactions that involve the other radicals attacking the fuel so
  that the H radical is not just endlessly propagated. 
* In some cases then interaction of HO2 with hydrocarbon fuel and go down a chain branching pathway.
* Fuel can act as chain terminating/propagating.
 
### Hydrocarbon mechanism

* Low temp
    * HO2 with the stable olefin forms h2o2 which might break down into two OH radicals for high temp,
      but at low temps.
    * At low temperatures it forms water (products) and oxygen.

# Notes
_from lectures_

* What we have fundamentally is a fuel and some oxidizer (like air or O2). 
* If we can generate enough energy to dissociate the chemical energy held within the bonds of the fuel we create heat
  through the energy differential of the reactants (fuel and air) and it's products (H2O and CO2).
* The change in energy is huge (like 2000K). This huge gradient leads to the formation of pollutants.
* Why Hydrocarbons?
    * Very high energy density.
    * Chemically stable at ambient temperatures.
* A good point is that something like a gas turbine, or scramjet (military uses) are some of the most engineered things
  in the world.
* In theory, a perfect combustion reaction should result in carbon dioxide and water, imperfections in this process
  result in particulates.
* Walking the soot, Nox line is hard (why?).
* As the flame temperature increases, so do the oxides of nitrogen. The flame temperature is a function of the
  equivalence ratio. It determines the reaction rate throughout the combustion process. Lecture 5 green area.
* The _stoichiometric mixture fraction_ is the minimum quantity of air we need to convert a quantity of fuel to it's
  reaction products (carbon dioxide and water).
* In the fuel rich case, we haven't given the fuel enough air to make all it's products. The intermediates it generates
  are undetermined.
* Lean reaction will distribute energy from fuel a bit more amongst the oxidizer molecules if not done perfectly.
* 21/11/22 11:06:48 
    * Looking at performance as well as safety, for instance, lead improved performance but lead had to start being
      taken out.
    * Ethyl groups added to lead to make it soluble in gasoline. Tetra ethyl lead.
    * RON (Research octane number) is how slow the chain reaction is.
        * Looked at otto cycle. On volume reduction, the pressure increases, but so does the temperature which may fuel
          radical reactions that can keep heat in the system.
        * Usually bottom dead center and top center ratio 16:1.
        * Using this engine, what's the ignition time (RON)
    * Benzene is carcinogenic whereas other legal standards looking at octane number.
    * Cetane no. is the opposite of the octane number.
    * Gas chromatography graph shows the size of molecules in fuel composition. The shorter the time the smaller the
      molecules (they get filtered quicker).
    * Viscosity of fuel is important as you look at evaporation that needs to happen on short timescales in the Otto
      cycle.
    * Crank angle degree, the height of the piston.
    * The high temperature reactivity is similar despite the fuel because of the beta bond (?).
    * [combustion assignment 2](combustion_assignment_2)
* 23/11/22 11:03:59 
    * H2H4 (ethylene), breaking of beta bond scission. The reaction is endothermic.
    * Alpha, beta, position relative to radical site.
    * In the methane system, there's no beta system problem. If the beta bond breaks you just go back to reactants.
    * Look for propane (C3H6), Formaldehyde (CH2O) in computations.
    * $C_xH_y + O \rightleftarrows CO_2 + H_2O$ where the arrows are is a universe of intermediates that increase and
      decrease temperature until a large exothermic reaction starts to finally get to the products. The left is
      technically time at zero and the right time at equilibrium but the in between is complicated.
    * Oxides generally lower in free energy than hydrocarbon (formation exothermic).
    * Incremental release of chemical enthalpy of the fuel.
    * Lead used to stop knock (the autoignition in the unburned gas).
    * Rocket system that doesn't shake itself apart (combustion instability) thermo acoustic interaction, Von Braun.
    * At higher distances from the injector tip, the equivalence ratio is lower. It's a gradient in the chamber.
    * Hydrocarbons: Alkanes and aromatics. C-C bond rather than 4 Hydrogen bonds, aromatic (hexagonal shape). Resonance
      structure, the radical is propagated in a ring.
        * Aromatics are a precursor to soot.
    * Very complicated chain mechanism for how a single radical might be generated. Something called 'Q' was introduced.
      End up with a 'keto-hydroperoxide'. Temp lower than 950K you will end up with water because of the OH radical.
      It's the process of oxidation of food.
    * $\text{fuel} + O_2 \rightarrow \cdot{R} + 2\cdot{O}H + RH$
    * H2O2 decomposes to make two OH which make water by hydrogen abstraction (temperature increase).
* 28/11/22 11:05:03 
    * Benzene and ethyne have 'adding sites' or lots of electron activity areas.
    * Nitrogen is very stable, that's why you only get reactions (with oxygen) at high temperatures.
    * Big particles (a large particle diameter) start to condense (that's the downward slope in the set of graphs on
      'Soot particle formation'). 
    * Mean free path, ability of molecule to diffuse.
    * H/C ratio is high, you get very low threshold soot index.
    * Mechanism of soot formation: hydrogen abstraction, carbon addition.
    * Pyrolysis fuel rich reactions making soot precursor reactions.
    * As long as you've aromatic molecules, you'll get particulate.
    * $N_2 + O_2 \rightleftarrows 2NO$
* 30/11/22 11:05:10 
    * Ethanol is a small molecule, has a high octane number (doesn't really undergo pyrolysis).
    * Methanol to break triglyceride (fat) bonds. Makes hydrogen rich chains.
    * Food for fuel. 1st generation biofuels should be used to fuel us (rather than cars). 
    * Advanced biofuels: Lignocellulose, everything other than the corn crop (the part we eat, can be used).
    * Cellulose is polymerised glucose.
    * Hemi-cellulose and cellulose is what we're after, to release their sugars.
    * Jet A. 89 grams of CO2 equivalent per megajoule. This unit being, carbon intensity.
    * Not allowed oxygen in aviation fuel (diminishes energy density and won't work at altitude).
    * Aromatic molecules needed for sealing (story about leaking of fuel that wasn't kerosene?).
    * Proposed metric for flying rpa, revenue passenger kilometers. Looking at weight (of bags too) costing CO2.
    * Land use costs, change in landscape that cost CO2 (so, in the amazon case the forests were sequestering CO2).
    * Can't afford sophisticated process for fuels because ultimately you're producing a low priced thing.
* 09/01/23 10:34:29 
    * How reactions change based on temperature (branching, radicals etc.).
    * Flame temperature.
    * Legal vs science specification.
        * no 1 thing we care about is energy density.
        * Transportation fuels are mainly liquid fuels derived from crude oil.
    * Ideal conditions: adiabatic (if temp of room lower, heat loss), reference temp.
    * NOx particulate tradeoff diagram. For two fuels (two fuels have a different H/C ratio so will have different flame
      temp.)
    * Numerical component and a detail component
    * At what temperature does HACA appear?
    * 25% distribution for jet fuels between, Parrafins, cycloparrafins vs aromatics 
    * Regimes: low temp., intermediate, high temp.
    * High temp: pyrolysis, then oxidation
    * Low temp: opposite, oxidation then pyrolysis.
    * Medium temp: ho2 ?
    * How are products made at each temp.
    * More inertness octane, more reactive, more cetane.
