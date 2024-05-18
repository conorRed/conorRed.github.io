---
author: Conor Redington
geometry: "margin=2cm"
output: pdf_document
colorlinks: true
---
# Chemistry

_notes from Atkin's 'Chemical Principles'_

* An element is a substance composed of only one kind of atom. I think, for instance, that Hydrogen normally appears in
  nature in it's elemental form as 2 Hydrogen atoms.
* The atomic number is the number of protons in the nucleus and equals the number of electrons so that an atom had
  neutral charge.
* > All isotopes of an element have exactly the same atomic number, hence they have the same number of protons and elec-
  trons but different numbers of neutrons. An isotope is named by writing its mass number after the name of the element,
  as in neon-20, neon-21, and neon-22. 

## Periodic table

* The middle block are the transition metals between the highly reactive first 3 groups and the less reactive last 6 or
  so groups
* main groups
    * alkali metals
    * alkaline earth metals
    * halogens 
    * noble gases
* A metal conducts electricity and is malleable and ductile 
* A metalloid can have the appearance of a metal or non metal but behave likes its opposite 
* The definition for metals is not very precise but the distinction is commonly made 
* ![Metalloids](physics/img/metalloids.png) 

_notes on 'nomenclature' not included, will have to just use the book as reference_

# Mole

* > 1 mole of objects means 6.0221 3 10 23 of those objects.
* There is an average value to the mass of an atom (when getting the molar mass). This is because a mole of a substance
  could be make up of a mixture of isotopes.

## Mixtures and solutions

* The formation of a mixture is physical change whereas the formation of a compound is chemical change
* In a solution (homogeneous mixture) there is typically a dominant substance (solvent) with other substances present
  (the solute)
* Crystallization is the process by which a solute slowly comes out of a solution as crystals
* Aqueous solutions are solutions in which the solvent is water.

## Chemical Equations

* Process of conversion of substances
* Due to the conservation of mass, equations must be balanced
* $\Delta$ can be used to represent high heat. The catalyst can also be written over the arrow to the products (does the
  catalyst not affect the conservation of mass?)

# Reactions

* There are 3 really common reactions in nature: precipitation, oxidation-reduction and acid-base.
* Oxygen is the most electronegative element (apart from Fluorine) in the periodic table. It is highly reactive and
  normally occurs in as a minus to ion because it want's 2 electrons to complete it's outer shell and it wants them
  really bad.
* Hydrogen can play a role as an oxidiser and a reducer.

## Precipitation reaction

* The extent to which any substance may be dissolved in water is quantitatively expressed by _solubility_. It's a
  measure of concentration of a substance in water at specific conditions.
* When the concentration of a substance in water exceeds it's solubility for those conditions precipitation reaction
  occur.
* The forming of a solid is the _driving force_ of this reaction.

## Acids

* Arrhenius acid: a compound that contains hydrogen and releases hydrogen ions in water.
* Arrhenius base a compound that produces hydroxide ions in water.
* Acid and base reactions could be considered proton transfer reactions, redox reactions are electron transfer.
* The pH level is the hydrogen ion concentration in a solution. The higher the hydronium (hydrogen ion) concentration
  the lower the pH. $pH = -log[H_3O^+]$ a change of 1 of pH is factor of 10 change for the actual hydrogen ions.
* Hydronium are hydrogen ions (so protons) in a water solution. Any free roaming proton in a water solution will be
  bonded to H2O making H3O (a positive ion).
* A _salt_ is an ionic compound formed during netralisation.

## Atomic Structure

_Looking broadly at the next collection of chapters, Atkins defines the general questions being answered_

* How is the structure of an atom being investigated?
* Why is a new system of mechanics necessary? (wave particle duality)
* What are the main principles of the new mechanics?
* What do those principles reveal about the structure of a Hydrogen atom?
* How is this structure extended to other atoms?

_useful to get familiar with notions of electric charge and electrons in general, might be good to pair with
electrostatics study from physics self-study_
 
* Im going to try and refrain from getting too caught up in 'whys' here but in general explaining the unseen with the
  unseen kind of erks me.
* What explanation am I looking for here?

## Ultraviolet catastrophe

* Due to Maxwell's equations, objects should be emitting an infinite amount of energy at small wavelengths, or higher
  frequency (UV side of spectrum)

## Atomic Spectra

* When energy is passed through an element, such as an electric current through a hydrogen gas, the electrons in the gas
  may be 'excited' to a higher energy state. When they lose energy and go back to their original state, light is
  emitted. The different wavelengths of light that get emitted determine the absorption of the element.
* This is seemingly unique to each element
* Is all radiation an aggregation of wavelengths? So that one wave could contain many different spectral lines
* > [Planck's] central idea was that a charged particle oscillating at a frequency $v$ can exchange energy with its
  surroundings by generating or absorbing electromagnetic radiation only in discrete packets 
* The Ultraviolet catastrophe was solved by Planck's explanation for the exchange of energy between matter and EM
  radiation
* > If the oscillating atom releases a packet of energy magnitude $E$ into the surroundings, then radiation of frequency
  $v = \frac{E}{h}$ will be detected
* > Planck’s hypothesis implies that radiation of frequency $v$ is generated only when an oscillator of that frequency
  has acquired the minimum energy required to start oscillating and then ejects it as a packet of electromagnetic
  radiation of energy $hv$. 
* The photoelectric effect fortifies the theory that elements have activation energies that must be overcome before EM
  radiation is emitted (or, before the electrons (and other particles?) in the atom become oscillators of a given
  frequency
* ![keofejectedelectron](physics/img/keofejectedelectron.png) 
* Kinetic energy of the emitted electron then varies linearly with frequency 
* Its not clear to me how the photoelectric effect relates to Planck's equation for the wave released by an atom after
  getting energy of a certain magnitude
 
* Where am I at?
* I need to be able to build up to the notion of atomic orbitals
    * The questions from above, how the structure of the atom is being investigated. Well, it's being investigated by
      light, so we need to determine the interaction between light and the atom. The first real insight here (apart from
      discovery of electron) is atomic spectra. That light has a unique absorption pattern with each atom.
    * The theory was proposed that particles in the atom would only oscillate with a certain frequency if they absorbed
      a certain amount of energy. Here, I'm confused in that if we've a wave oscillating a particle, does that not mean
      the particle will in turn produce it's own wave (as it carries charge?)
    * Electrons behave like waves as well as particles (through diffraction) like light. This means we can't purely use
      classical mechanics to talk about atomic function
    * This new system is confusing as fuck

### Building up principle

* In the ground state of a many-electron atom the electrons occupy orbitals in such a way that the total energy of the
  atom is a minimum
* This would in theory mean all the electrons occupy the 1s orbital but the Pauli exclusion principle prevents this
* > No more than two electrons may occupy any given orbital. When two electrons do occupy one orbital, their spins must
  be paired
* In general only valence electrons can be lost or gained in chemical reactions so atoms can be thought of a core shell,
  in the case of lithium a $1s^2$ helium shell surrounded by $2s^1$ valence shell
* In the case of the 2p subshell if we have 6 electrons, how do we know which orbital the 6 electron should occupy?
    * Electrons repel each other less in different orbitals. So the less energy option is to take up a parallel spin in
      an empty 2p orbital
* Those atoms in energy states higher than those predicting by the building up principle are said to be in **excited
  states**. This doesn't last long and the emit a photon as they go back to their ground state
* > In general, you should think of an atom of any element as having a noble-gas core surrounded by a number of
  electrons in the valence shell, the outermost occupied shell. 
* If we snake left to right on the periodic table, all atoms on the same row have a valence shell in the same quantum
  number. When we go to the row below, the core shell takes on that of the noble gas finished on the row previous and
  the valence shell now takes on a new quantum number
* The columns group together similar chemical properties, they all have the same number of electrons in their valence
  shell
* Things get a bit funky then for higher primary quantum numbers because electron-electron forces come into play
  

### Ionization energies

* The **first ionization energy** is the minimum energy required to remove an electron from a neutral atom in the gas
  state. The **second ionization energy** is the energy needed to remove an electron from a cation in the gas state. 
* The second ionization energy is larger than the first, it takes more energy to remove an electron from a cation

## Minerals

* A solid chemical compound with a well defined structure, occurring naturally
* There's different groupings of minerals depending on composition e.g. sulfides, oxides, carbonates, silicates

## Solids

* A solid material whose constituents are arranged in a highly ordered structure forming a crystal lattice (an array of
  discrete points)
* A crystalline solid has long range order. Locally in a amorphous solid there might be a pattern but it's not
  indefinitely repeated
* Solids can be classified by the bonds that hold their structure. The s and d block elements are   often defined as
  metallic solids because they are held together by cations amongst a sea of electrons
    * > The solid phases of three quarters of all elements are metals
    * In metals the valence electrons can be shared with the hole structure and move relatively freely (by having a
      light interaction with everything?)
    * Forming an 'electron sea' all the ions crumple up because there's an interaction with electrons in all directions,
      this creates the close packed kind of model. Atoms are stacked in either a hexagonal or cubic arrangement, the
      maximum coordination number being 12
    * A cubic close packed unit cell can also be called a face-centered cubic structure
* Network solid are those solids that are covalent bonded to eachother throughout the solid

## Bonding

* All cations are smaller than the 'parent' element as they lose electrons reducing shell radius
* The opposite happens for anions as the interact with eachother when added
* Metals on the right side of the periodic table want to reach the noble gas state to their right (gaining electrons) so
  they're more likely to be anions and metals on the left want to lose electrons to get to noble gas configuration on
  the left (more likely to be cations)
* As you move across a period, ionization energies increase as electrostatic with the nucleus increases
* No bond is totally ionic or covalent. Which way it tends is based on electronegativity.
* If the difference in electronegativity is small the bond will be largely covalent.
* A bond is ionic or covalent because that's a good approximation of what it probably is.
* What does it mean to say that a certain bonding couple is energetically favourable?
    * If we think of two atoms of a particular elements floating in some hypothetical free space.
    * There is an electrostatic interaction between these atoms. 
 
## VSPER Model

* Lewis structures are useful in representing no. of lone pairs in a molecule and the linkages between atoms. It doesn't
  say anything of the shape of molecules
* The VSPER model adds more rules and represents molecular shapes 
    * Regions of high electron concentration repel eachother, moving far apart but maintaing their distance to the
      central atom. Lone pairs not considered yet on the central atom (for some reason)
    * Only the positions of atoms are considered in determining the shape of the molecule but all effects from lone
      pairs and bonds are also included in this description
* > If there are no lone pairs on the central atom (an AX n molecule), each region of high electron concentration
  corresponds to an atom, and so the molecular shape is the same as the electron arrangement.
* A polar bond is one where the atoms do not have equal 'hold' of the electron they're sharing. A polar molecule is one
  with a non zero dipole moment. 

## Valence Bond theory

* takes the wave nature of electrons into account. The previous two models are localized electron models in the sense
  that a bond and electron have a fixed place
* $\sigma$ bonds for when opposite spins overlap, forming an orbital around both atoms. All single bonds are sigma bonds
* $\pi$ bonds just have a single nodal place on the axis joining the nucleus. Kind of like the $\sigma$ bond turned on
  its side
* Interference in wave patterns can result in hybrid orbitals
* Process is: Identify valence shell atomic orbitals that contain unpaired electrons then allow these orbitals to
  overlap forming $\sigma$ and $\pi$ bonds.
* Also, mainly describing bonding between the same types of atom.

## Hybridization

_Hybridization also converges towards lower energy levels, why is this?_

* Hybridization occurs in the creation of methane which is one carbon atom surrounded in a tetrahedral structure by
  hydrogen. 
* In it's ground configuration carbon is ![carbon ground state](physics/img/carbongroundstate.png) 
* The bond with 4 hydrogen atoms can be created by excitation of the 2s orbital to 'promote' one of the electrons to the
  vacant p orbital.
* The energy released on the creation of the 4 bonds is much greater than that of excitation of the 2s state so it is
  energetically favourable.
* This creates a $sp^3$ orbital. Which yields 4 $\sigma$ bonds ![sp3 orbital](physics/img/sp3orbital.png) 

# Physical Equilibria

### Vapor Pressure 

* For a substance, it's vapor pressure is the pressure exerted by it's vapor when it's in dynamic equilibrium with it's
  condensed phase.
* The vapor pressure of a liquid (at a given temp.) is expected to be low if it's intermolecular forces are strong.
* Vapor pressure rises with increased temperature.
* The Clausius-Clapeyron equation gives the quantitative dependence of vapour pressure on temperature.
* The imbalance between atmospheric pressure and vapor pressure is how boiling works.

_What is dynamic about vapor pressure?_

* If we put water into a container that is in a vacuum
* If we put a liquid into a sealed container. The liquid will start to evaporate as molecule from the surface has
  enough energy to escape into the air above. 
* Eventually there are enough molecules in the space above the liquid that a molecule that enters that region (or is in
  that region) loses energy and rejoins the liquid phase.
* The vapor pressure is the pressure exerted when these two rates are equal.
* As the average speed of molecules reduce, they are more likely to clump together.
* So we have two processes operating
    * At a given temperature for volatile substance in a closed container more of it's molecules will enter the vapor
      state trying to converge on some equilibrium. This equilibrium may never be reached by the way.
    * In an open system, like water in a beaker, the vaporisation rate is never in dynamic equilibrium with
      the condensation rate. The water evaporates away.
      
### Boiling

* The _boiling point_ is the temperature at which the vapor pressure of the liquid is 1 atm.
* Happens when the molecules entering the gas state are not just the surface of the liquid, because the surface
  molecules kind of lift up the weight above them allowing the lower levels to start entering the gas state.

### Freezing and Melting

* Water freezes when the molecules don't have enough kinetic energy to move past their neighbours. They might then not
  have the energy to overcome dipole interactions (or hydrogen bonds?).
* The _freezing temperature_, the temperature at which the solid and liquid phases are in dynamic equilibrium. The
  _normal_ freezing temperature is whatever this is at 1 atm. This is why sometimes you've to go a bit below 0C to fully
  get solid ice.
* The critical point defines a state at which the substance becomes a really dense gas. But not a gas that we can
  condense to a liquid form. Called a _supercritical fluid_.

### Solubility

* Another dynamic equilibrium.
* We can use enthalpy values and Gibbs energy to determine if a solution will dissolve. 

# Chemical Equilibria

_Start to look at dynamic equilibrium that is reached in chemical reactions_

## Reaction Quotient 

![reaction quotient](physics/img/reactionquotient.png)

* _law of mass action_: over a series of experiments with the same relative concentrations for a reaction the same
  reaction quotient appears.
* Each reaction has it's own characteristic equilibrium constant, but that value is dependent on the temperature.
* The magnitude of the equilibrium constant is a measure of the extent to which the reaction favours the products or
  reactants.

* Chemical reactions reach a state of dynamic equilibrium in which the rates of forward and reverse reactions are equal
  and there is no net change in composition.
* Most reactions are those shifted very slightly to the products.
* Gibbs energy helps us look at the mechanism or why the reaction quotient is the way it is.
* At equilibrium further formation of the reactants is not spontaneous.
* The Gibbs energy is dependent on the proportions of the reactants. Every chemical reaction tends towards a Gibbs
  equilibrium $\Delta G = 0$.
* $$\Delta G = \sum nG_m(\text{products}) - \sum nG_m(\text{reactants})$$
* n is a stoichiometric coefficient, a number, not necessarily a mole.
* Equilibrium constant can come in forms of partial pressure, concentrations etc.

# Kinetics

* Average rate of consumption of reactant R is $\frac{\Delta[R]}{\Delta t}$. Rate is anything changing over time, here
  it just happens to be concentration.
    * [R] is the molar concentration. $\Delta[R]$ is negative because reactants are used up in a reaction to create
      products.
* The _unique average rate_ ...
* Initial rate, the instantaneous reaction rate at t = 0 for a species is proportional to the initial concentration of
  that species.
* Trying to determine linear relationships. Taking the simplest case where no reactants are used up, if the slope of the
  intial concentration at t=0 is a line, the reaction rate can often be determined as linear to changes in
  concentration.
* Rate of consumption of a particular reactant at some time = $k_r[\text{Molar concentration of reactant}]$.
    * This is a _rate law_. An expression for the instantaneous reaction rate in terms of the concentration of the
      reaction at any time.
* In some cases initial rate may not be proportional to initial concentration but some order of the initial
  concentration.
* In many cases the products do not take part in the reaction, so the expression for the initial rate is applicable to
  later stages of the reaction when products are present.
* A _zeroth-order reaction_ is independent of the reactants as longs as there's some of it there.
* **Rate law's for reactions are determined experimentally**.

## Integrated rate laws

* If we integrate the rate laws they should give us a value of concentration of the reactants (or any species involved in
  the rate law) at a specific time.
* We can use the integral of a first order rate equation as a measure of whether a reaction is first order or not.
* If $ln[A]_t = ln[A]_0 - k _rt$ is linear, then it is a first order process.
* A half life for a first order reaction is $t_{\frac{1}{2}} = \frac{ln(2)}{k_r}$
* The half life has the same value at all stages of the reaction because it doesn't depend on concentration.

## Reaction mechanisms

* Each _elementary reaction_ describes a distinct event in the progress of a reaction, often a collision of particles.
* To describe how a reaction takes place, chemists propose a reaction mechanism, which is a sequence of elementary
  reactions on how they believe the reactants are transformed into the products.
* The summation of the elementary reactions must give the initial reaction. Reaction intermediates can exits, but they
  must cancel out.
* Elementary reactions are classified by how many molecules are involved in the reaction equation. If it's one molecule
  splitting it's unimolecular, two molecules coming together or interacting, bimolecular.
* Kinetic information can only support a proposed mechanism (through verification of rate laws of reaction mechanism and
  experimentation) it can never actually say it is the mechanism as some other mechanism could lead to the same rate
  law.
  
### Chain Reaction

* In chain reactions the reaction intermediary creates more reactionary intermediates (normally radicals).
* Normally described with an initiation stage that produces the chain carrier or radical in radical chain reactions.
  Then an equation of steps to describe the propagation reactions. Finish with the termination process.

---

* Arrhenius tries to describe how reaction rates change with temperature using the line equation.
* $$lnk_r = lnA - \frac{E_a}{RT}$$
* Reactions that give a straight line when $lnk_r$ is plotted against $\frac{1}{T}$ are said to show _Arrhenius
  behaviour_.
* $E_a$ is the _activation energy_, because the slope of the reaction rate line is proportional to this. The large the
  activation energy the larger the dependence of temperature and the rate constant.

# Nuclear chemistry

* In the earlier 1900's the Curie's propose that perceived radiation emitted from blocks of elements is something all
  atoms do referred to as _radioactivity_.
* The existence of the nucleus was unknown at the time. Rutherford subjected the radiation to differing magnetic fields
  when he discovered the nucleus he deemed that $\alpha$ particles (because they were positively charged) must be a
  helium nucleus.
* By measuring the mass of the emission that was attracted to the field he found that they were electrons.
* A change in composition of the nucleus is called a _nuclear reaction_
* Nuclei that change their atomic structure spontaneously and emit radiation are called radioactive.
* All nuclei with Z > 82 are unstable and decay mainly through $\alpha$ emission. For some reason these atoms want to
  shed protons until the reach under 80 or so.

## Nuclear fission

_notes from introductory nuclear physics_

* Enrico Fermi after the discovery of the neutron in the 30's started experimenting with bombarding the nucleus with
  neutrons. 
* He found that atoms bombarded in such a weight emitted $\beta^-$ trying to compensate for the addition of the new
  neutron by creating a proton. This led to an attempt to produce heavy elements than uranium (the heaviest naturally
  occurring element).
* The produced atoms seem to be really low down the table (barium) and large amounts of energy were released with this
  neutron capture.
* It was deemed that the bombardment of Uranium causes it to split nearly in half, _fission_.
* The total nuclear binding energy increases roughly in proportion to A, while the Coulomb repulsion energy of the
  proton increases faster, like $Z^2$.

# Organic Chemistry

# X-Ray Diffraction

* X-ray diffraction is based on constructive interference of monochromatic X-rays and a crystalline sample
* Using Bragg's law $n \lambda = 2d sin \theta$ the lattice structure can be determined.
* This is based on the notion that each lattice structure is unique.



# Notes

## Introduction to the history of Chemistry

* Exploration of the materials around us seems to begin with tool making, understanding that different materials have
  different properties. 
* Trial and error generated compounds such as glass and improve their purity. This form of knowledge requires a
  seemingly large amount of trial and error, I wonder how intuitive some of these methods generated actually were?
* "Indeed almost all 'industrial' or 'applied' chemistry right up until the 18th century was purely 'trial and error'
  and empirical in nature" 
* Aristotle looked at causation of 'stuff' in general, what was its final form, or material cause (why it had certain
  properties), why it formed the way it formed. 
* There was a large array of synonyms for the same thing. There was no patent structure no people wanted to keep
  processes to themselves. Made it very confusing to practice this "science" it was more a collection of techniques used
  by artisans, metallurgists, technologists and pharmacists
* Theres evidence (it seems) that alchemists thought in weights and measures, with a general theory of a molecule

## Chapter 2

* Fundamental problem is transmutation. How can two disparate materials merge two form another disparate one. The process
  can be reversed so we know that the initial materials are somehow compounded to create the merger.
* The origins of chemistry is in the metallurgical, distillation and glass-making activities of Greco-Egyptian artisans
  which was adopted by the Arabs (who were able to isolate alcohols?) which eventually made it's way to the west.
* Paracelsus pushed for this chemical nature of the universe. He saw his mission to reform natural philosophy and
  theology (?). He saw himself as a prophet. He didn't see the balance of the 4 humours as a valid explanation for
  diseases, he thought it down to poisons from the starts or inappropriate diet. His remedies tried to find analogous
  anatomical things in nature. He then performed chemical processes to distill these things down. This made chemistry a
  part of a physicians training. Academic chemistry became a thing.
* He viewed things in a trinity. So the building blocks of transmutation came in sulphur, mercury and salt. He broke
  down combustion in this way. It's interesting that similarly in Ptolemy's geometrical view of the orbits it fits a
  nice anthropocentric narrative. That is one that we can comfortably understand.
* The triumph of Paracelsus against the Galenic view of medicine promoted pharmaceutical chemistry in universities for
  the years to come.
* The fact that materials could be mixed and then through some other process (acid on an alloy) be reclaimed signified
  that the initial materials somehow merged to form the composite.
* Water as a fundamental substance of matter (Helmont, from growing a tree from just watering the soil) inspired Boyle
  too, he thought however that there was a universal substratum of matter divided into corpuscles. 
* Chemistry became part of a basic education in France around this time 
* Towards the end here I'm confused at how the use of the three principles was beneficial. Is it that more composite
  building blocks than those of matter floating around could be used? French chemists began to work with salts
* In the 18th century French chemists were able to categorise the different "chemical affinities". Newton had suggested
  that some similar dynamic to gravity existed on a smaller scale as an explanation to why matter cohered and
  aggregated. This affinity is classified as a particular type of displacement reaction.
* These tables offered no theoretical insight however
* These tables expanded the trinity of principles into a wider array of principles that composed minerals

### Notes

* From Kuhn, the idea that paradigms previously constructed are essential in  guiding experimentation. Chapter 3
  explaining the nature of normal science
* It's interesting Kuhn refers to experimentints in visual perception where people can only get there bearings after
  establishing a model of the world. He says that "something like a paradigm is prequisite to perception itself". It's
  interesting to note that I too am searching for a paradigm to view the history of Science through. Also, trying to
  notice the frameworks I'm currently looking at Science through.
    * Looking back on this, I think I've missed the point. A paradigm is something like atomic theory, where are
      'window' into the unseen is totally dictated by the paradigm.
* From Kuhn the main crisis in Chemistry before oxygen theory pneumatic (gas) chemistry and weight relations. The air
  pump signified some relationship between air and chemical reactions (?). Bodies experienced weight gain when burned or
  roasted. This was seen as just a minor inconvenience.
* The vacuum pump
    * How would you induce all air had been removed?
        * From the first experiments with a barometer. When the tube is turned upside down. A gap appeared at the top.
          Because of the conservation laws (I think), this can't just be air that has appeared. It is a lack of water
          and air. A lack of any fluid.
        * Toriccelli thought he would be arrested with his new ideas about the vacuum. It seems he first proposed this
          idea that the air has weight. That it pushes down on us.
        * https://web.archive.org/web/20100106074525/http://www.strange-loops.com/scibarometer.html
    * [The origins of the suction pump](https://sci-hub.hkvisa.net/10.2307/3101219)
        * The problem of raising water. To clear out mines
        * Use cases are first scene in the 15th century with German mines
        * Hand operated force pumps were limited. The introduction of a valve that allowed in air one way but not the
          other was the crucial step. 
        * I'm not too sure how natural atmospheric pressure makes this work.
