# Solar Cells

_me, trying to understand how solar cells work_

* Light is absorbed by lattice structures and can cause electrons within the structure to enter an excited state
  allowing them to be _conducted_.
* They don't remain in this state forever, eventually their energy will dissipate and they will recombine with the atom
  they left (or some other atom if multiple electrons enter the conduction level (of energy)). 
* The first process is the generation of a electron-hole pair. The pair here is a bit counter-intuitive *.
* The second process is recombination.

## Band theory

* When two or more identical atoms' orbitals overlap, they hybridize.
* As a result of the Pauli exclusion principle their electrons can't be in the same orbital. A new energy level must be
  created to accommodate both electrons.
* The new energy level is not far from the original. As more and more atoms overlap a band forms around the initial
  energy level that they all 'wanted' to occupy.
* The outermost orbitals interact more than the inner on average, this makes the outer energy bands larger.
* From molecular orbital theory: "N molecular orbitals can be constructed from N atomic orbitals."
* If we look at an energy level diagram a band forms when we add lots of homo nuclear atoms together. 
* The aufbau principle says that we build up from the bottom (lower energy levels populated first).
* A band of orbitals forms at each overlapping energy level. 
* How is the gap between the bonding and anti bonding energies determined?
* It's useful to note that most models I have in my head of silicon lattice structure is that structure at 0K, anything
  above that and there's vibrational motion in the lattice.
* Is the conduction band considered complete dissociation from the atom? The conduction band then just represents a more
  freely moving, or 'less attached' energy level for the electron. Or that it's ionization energy decreases?
* The conduction band is just a representation of the energy level of a free moving electron.
* When the conduction band overlaps the valence band, general lattice vibrational energy causes free moving electrons so
  that when an electric field is applied there are electrons 'already freed' from their bonds.
* Because we're talking about de localised orbitals, the conduction band could also be an attainable energy level where
  electrons can move with some applied electric field.

## Conduction

* The classical free model of the electron as a particle operating as it does in an ideal gas works for certain cases
  except for heat capacity.
* The Fermi gas model creates a more accurate picture. The pauli principle of electrons are taken into account. 
* Im not too sure how modelling individual electrons is affected by molecular orbitals.
* The Fermi level is the highest energy state an electron could occupy if you were to use the building up principle at
  absolute zero.
* Got a bit lost at fermi surfaces.
* When a molecular orbital is created between homogeneous atoms brought together, the out electrons of each atom are
  more likely to interact so they will have the largest band. This band spreads out close to the whole solid. When it is
  de-localised over the whole solid it is known as a conduction band. Any electron in the range of orbitals has no
  definite position on the solid itself.
* Application of an electric force then distorts the wave function of the these electrons, or makes it more likely that
  they will appear in those directions you expect from the electric field??
* The valence band may spread across the whole solid too but it's a valence band because it's filled so there is no
  other position the electrons in it could occupy. What does 'filled' mean?

## Semiconductor

* Band structures and energy levels differentiates semiconductors, insulators and conductors.
* How small the band gap is determines conductivity. For semiconductors only a small energy increase is required for
  valence electrons to enter the band gap.
* In a conductor, a really small amount of energy is need for electrons to be free moving (and possibly 're-attaching'
  intermittently)
* If a energy band is wide enough, those electrons at the end of the bad won't have much attachment to the nucleus? 
* Only at absolute zero are all the bonds really stuck in the lattice configuration.
* 'Holes' are conceptually like a bubble in water. It's much more convenient to talk about the movement of holes rather
  than all the noise of the electrons. Although, is it not one to one?
* Holes don't have to move sequentially, it can be disappearing and reappearing like a space/spaces in a busy car park.

  
* The hole stays in the valence band. An electric field applied to the valence band distorts the bonds making it
  possible for electrons from other bonds to make use of the holes.
* There is a positive charge left behind in an n-type conductor? You have this positive charge but there's no available
  states for an electron to occupy on the atom. It's a positive charge, not a hole, apparently.
* There is a rate law that determines the concentration of holes to electrons. The number of holes is inversely
  proportional to the number of electrons. $n*p = n_i^2$ intrinsic carrier concentration.
* k represents spatial frequency, how fast something changes in space.
* The goal of the quantum mechanical tools is to determine how many electrons we have to conduct electricity.

## Doping

* When you add an amount of Phosphorus, an electron is added to the lattice. This leaves behind a positively charged
  phosphorus ion which doesn't actually bind to the free floating electron.

## Absorption

* If the photon of light is much larger than what's need to excite an electron to the conduction band, the excess energy
  is lost to thermal radiation as the electron returns to the lowest level of conduction band.
* The _absorption coefficient_ determines how far into a material light of a particular wavelength can penetrate before
  it's absorbed.
* The inverse of this coefficient is _absorption depth_. Material dependent.

## Diffusion

* 

## PN Junction

* If we sandwich two doped semiconductors together, the overall charge on each conductor is neutral, the intrinsic
  semiconductor is neutral and so are the dopant atoms.
* There is a concentration gradient that exists when they are sandwiched together. The electrons in the n-type diffuse
  into the p-type and holes in the p-type diffuse into the n-type.
* As holes move to the n-type, apart from the already existing donor ions that exist there, that are positive you get
  more positive charges. The same happens on the p side. 
* The n-type starts to gain positive charge and the p-side starts to gain negative charge.

## Short current

* This is the current produced by the energy of the photon. The circuit is shorted (as in there is no load attached,
  emitter is connected to collector) for this to be measured.
* Also, known as light-generated current.

## Voltage in solar cell

* If the energy of the photons of light are much higher than the band gap you lose energy to heat by the electron
  returning to the 'edge' of the band gap. This is called _thermalization_. The maximum potential of the electric field
  between a electron hole pair is the band gap. 


# Efficiency

* Carnot engine puts the work that can be extracted from a heat sink at $1 - \frac{T_c}{T_h}$. If the cold sink is the cell
  and the hot source the sun, the efficiency of a solar cell should be in the high 90's.
* Thinking of a solar cell as an engine, it's efficiency, conversion of energy in to out is dependent on multiple
  things.
    * Absorption spectrum: there is only a certain section of the radiation from the sun that can be turned into useful
      current (known as quantum efficiency, what portion of the electrons from photons turn into 'circuit electrons'
      used in conduction). 
  
## Losses


# Production of Solar cells

* There seems to many variables to keep track of.
* 1st and 2nd generation cells are constrained by the Shockley-Queisser limit because they've a single p-n junction.
 
## Explain how a solar cell works

### 21/10/22 19:50:37

* A solar cell is made of a semiconductor that absorbs light (energy) causing the generation of current.
* Operation
    * The electron hole pair generated by a solar cell does nothing on it's own
    * An electric field, or voltage is put across the solar cell so that any electron generated can be carried through
      the circuit.
    * The generates a current (electricity).
* The derivative of an exponential is some constant times the value of the function.
* The derivative of the exponential of e is the function e.
* The growth rate of e in time is e from the previous time segment. It's slope at y is y.
* $\frac{d(e^{ct})}{dt} = ce^{ct} \text{the defn. of ln} 2^t = e^{ln(2)t}$ The proportionality constant that pops up
  taking the derivate of all these exponential is ln of that base.
* $\frac{d{(2^t)}{dt} = 2^t(ln(2))$
* exponentials are almost always written with e.
* Natural phenomena normally involve some rate of change that's proportional to the thing that's changing.

### 17/11/22 17:17:00

* Light hit's the solar cell.
* Energy is transferred to the lattice structure of the cell.
* This can excite electrons enough that they enter the conduction band, a de-localised molecular orbit that encases the
  whole lattice.
* A p-n junction is used to separate the conduction electron from the 'hole' it's just left.
* More voltage can then be applied to give these conducting electrons more energy.
 
* https://www.youtube.com/watch?v=fqWbERkwOqo
* 'Surface' of the sun is 6000K but the Corona can reach 1 million K. It seems in the convection zone, you have a
  huge amount of charge moving (in plasma) this generates a huge electromagnetic field. This magnetic induction
  heating doesn't affect the surface, but the magnetic zone around the sun.
* Initially used as light detector. No one really thought that light would have energy. People more familiar with
  mechanical work 
* Larger doping the emitter n+ region will allow dispersion of electrons down to space charge region
* Want the light to be absorbed close to the top of the free charge region. There's material properties that have to
  be considered for the production of p doped layer.
* 20/10/22 10:01:21 
    * Maybe I will know whats going on this time, unlikely
    * Xenon lamp simulates sunlight for oriel solar simulator
    * Shunt resistance is broadly defined under quality of material
    * Need to know conversion efficiency equation by heart
    * At equilibrium, drift current (current due to depletion region) is the same as diffusion current which is
      caused by majority carriers crossing barrier.
    * nrel.gov
* Higher CO2 levels make it harder to concentrate, what happens with this on a global scale?
* 01/11/22 11:01:00 
    * How do we measure quantum efficiency?
        * Spectral sensitivity not to be mixed up with spectral efficiency. Sensitivity is the photocurrent
          generated for a particular optical power.
        * Quantum efficiency is also dependent on wavelength so it's not just a linear constant of spectral
          sensitivity.
        * $s(\lambda) \frac{N_{ehp}*q}{N_{IPH} *\frac{hc}{\lambda}} = \frac{I_{sc}(\lambda)}{P_{in}(\lambda)}$
        * Short circuit current is a measure of photocurrent.
    * Why we can't get 100% efficiency out of our cells?
            * You can't just apply thermodynamics to solar cell because it's complex. Why? All data from the sun would
              suggest a very high Carnot efficiency.
            * Best solar cells (experimental) are close to 50%. So Shockley theory is wrong?
            * Sun is considered a black body.
            * The seem to paint a picture of what actually seems to happen. Have to read this paper for homework.
            * If the photon has a much higher energy than the band gap it gives the electron too much energy, as the
              electron loses energy it generates heat (thermilization losses).
            * Spectral irradiance: flux of radiation per unit area.
            * $N_{ph}$ no. of useful photons.
            * Solar cell can't absorb all wavelengths which would let it reach max efficiency. Even after that you've
              losses throughout the semiconductor, not all electrons will contribute towards current.
* 03/11/22 10:01:52 
    * Optical losses
        * Bury contacts to reduce surface area exposed to light.
        * Flipping of emitter and collector from a regular cell also being experimentally tested (I'm unsure about
          the collector emitter terms). Emitter is the n-type that generates electrons and the collector the
          positive contacts that has holes available for electrons to occupy finishing the circuit.
    * Electrical losses
        * Trapped state could be caused by impurity (?), the electron can relax to the trapped state. Normally
          process is not radiative. Hole and electron don't meet at the trap like in the diagram, the electron
          eventually makes it back to the valence band (?). May see light emission from trap to valence band.
        * Auger recombination. If electron recombines, it might generate enough lattice energy to push another
          electron to the conduction band. As there's variation in how close the band is to electrons around the
          lattice structure.
        * Can load up the p surface with more holes to prevent surface recombination.
    * How do we take all these possible losses into account and make a cell?
        * PERL cell.
        * Single junction cell.
    * Generations of solar cells
        * Nano science made a significant contribution to the development of solar cells.
        * Efficiency is a function of the limitations of the material. Could there exists a material with 90%
          efficiency?
        * Direct vs indirect band gap. 1st generation had indirect gap in 1.1Ev range.
* 08/11/22 11:04:10 
    * How to make silicon cell?
        * Need very pure silicon dioxide (not really sand).
        * Quartzite in heat, producing MG silicon powder. Called metallurgical because it's widely used in
          metallurgy.
        * Hydrogen chloride reacted with MG silicon. The product of chemical reactor process is very volatile
          (boiling at 32C), can distill.
        * After the Siemens process it's a pure gas(?). 
        * Can do doping from gas phase of float zone process.
        * Inverted pyramids are etched into wafers in the process of texturing. Photo electro graphic technique(?).
        * How to create n in pn junction?
            * Diffusion technique. Put phosphorus gas above p type (which is the wafer) in a gas form. Phosphorus
              starts to diffuse into the surface.
            * n type is heavily doped, neutralising all boron in p type and producing plenty of electrons.
            * Matters if cells placed in series or parallel. In series voltage will increase, in parallel current
              will increase.
            * If one of cells get's shaded, and cells are in series. Cell will act as resistor (i.e. covered by
              leaf). Can put a bypass diode.
        * Polycrystalline silicon is a lot cheaper.
* 10/11/22 09:59:22 
    * Amorphous silicon, amorphous with some amount of hydrogen. They are used to terminate 'dangling bonds'.
    * Transparent conducting oxide: Indium doped tin oxide, fluorine doped tine oxide. When doped they become
      conductors and are transparent in the visible range.
    * At the pin junction electrons migrate through the intrinsic layer to the p layer. They leave positively
      charged ions behind. Negative ions are created on the p side.
    * You've an electric field from p to n across the pin junction.
    * Roughness of TCO contributes to 'rough' pin layers.
    * Bottom TCO layer is for Shockley barrier (?).
    * Light contributes to the creation of dangling bonds which contributes to inefficiency.
    * Heating recrystallizes silicon. Heating up amorphous silicon 'repairs' dangling bonds. This is tempering the
      cell before selling to get a stable efficiency.
    * Didn't really understand tunnel junction. There is no drop in voltage (because of tunnelling) recombination
      current contributes rather than taking away from overall current?
* 15/11/22 11:17:23 
    * II-VI semiconductor, elements should be from IIB group (Zn, Cd, Hq) and from VI main group (O, S, Se, Te).
    * We could have really cheap cells with CdTe but can't be the case because they're poisonous 
* 17/11/22 10:15:00 
    * Newer gen cells may be able generate more that one pair with each photon of light
    * Lighter doping elements have less likelihood of trapping holes?
    * Epitaxial: single crystal layer.
    * There is not much durability to multi junction cells because of change in temperatures on the likes of glue.
* [shockley 1961](shockley_1961)
* 22/11/22 11:06:58 
    * Normally LUMO refers to anti bonding orbital.
    * Carbocylic acid needed to bind to TCO.
    * Iodine used as an electrolyte because it exchanges electrons very easily.
    * Dye-sensitised cell works well in diffuse light.
    * Major problem is that cell is not very stable due to thermal energy of electrolyte.
    * Although, efficiency improves with temperature. Outdoor the cells only last a number of months.
    * Perovskite: Calcium titanium oxide.
* 24/11/22 10:19:42
    * Organic cells help hole transportation?
    * Cells are easy to make, but the materials are hard to synthesise.
    * You damage the compound by shining light. 
* 29/11/22 11:09:15 
    * Band gap is controlled by size of the quantum dot (as this relates to energy level).
    * QD probably more future looking, they're very inefficient now. Maybe they can be improved with more research.
    * Much more granularity in choosing band gap for QD cells.
* [2nd assignment](perovskite_vs_silicon)
