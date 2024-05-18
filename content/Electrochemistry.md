# Electrochemistry

_study of the chemical processes that cause electrons to move_

* OILRIG: Oxidation is losing electrons; Reduction is Gaining electrons.
* _Electrode_: An electrical conductor that makes contact with non metallic parts of a circuit.

## Basics

* A zinc and copper cation is a spontaneous redox reaction.
* Separate this reaction by a wire so that the flow of electrons in the reaction produces a current.
* Electrolytic cell: does work by absorbing free energy from a source of electricity to drive a non-spontaneous
  reaction.
* Galvanic cell: does work by releasing free energy from a spontaneous reaction to produce electricity.

---

_notes from "Understanding Voltammetry"_

* A situation in which we have a solution of two anions of different charge with an electrode (platinum rod) placed in
  the solution causes a _potential determining equilibria_.
* $$Fe(CN)^{-3}_{6}(aq) + e^- \rightleftarrows Fe(CN)^{-4}_{6}(aq)$$
* The equilibrium is reached when the rate of electron transfer is equal but it's possible that the absolute rate of
  transfer is different so that a negative charge may build up on the electrode and a positive charge for the solution,
  this creates a potential difference.
* Electron transfer is favourable in the above because the Fermi level of the electrode is above that of the Highest
  free orbital in the solution. The bands of both things change throughout this interaction but ultimately the lower
  energy seeking is key to the creation of a potential.
* > a balance between chemical energies (quantified via the chemical potentials) and electrical energies. The reason for
  this is that electrochemical equilibrium involves the transfer of a charged particle, the electron, between two
  phases, the solution and the electrode, which may have two different electrical potentials. Accordingly, the
  electrical energy of the electrons differs from one phase to another.**?**
    * Why are the chemical and electrical energies different given what we just said about fermi levels etc.?
        * Given that the reactions involve electron transfer, what might be chemically spontaneous, may be less
          favourable electrically. If you had a high activity solute that had a high potential, you would expect a large
          transfer or reaction with the electrode. But if the electrode has a high electrical potential, this transfer
          won't take place because fundamentally our chemical reaction is defined by the electrical potential. Why are
          chemical and electrical potentials not identical then?
* The standard hydrogen electrode gives us a way to define the electrochemical potential of a 'single electrode'. It
  gives a potential for a half reaction.
* The signs of the potential is slightly confusing but it's a determination of relative flows of electrons (relative to
  what two electrodes you're measuring). If the potential is positive with the reference electrode the flow of electrons
  is to the solution in your half reaction, if negative it's to the electrode in your half reaction.
* In a half reaction, the chemical reaction is either giving or taking away electrons so the shift from product to
  reactants is an increase or decrease in electron transfer. In this way, the Gibbs free energy measures transfer of
  electrons while the reaction is trying to reach equilibrium.
* It's not a prediction but by definition for the reaction that only deals in electron transfer. If we look at the
  change in Gibbs energy, all of the energy must have been lost or gained by electron transfer which increased or
  decreased energy by $-nFE_{cell}$ that can be done with this change in Gibbs energy.
* >  Ultimately, a situation is reached when the Fermi level lies in between the energy levels of the two ions, so that
  the rate at which electrons leave the electrode and reduce Fe(CN) ions is exactly matched by the rate at which
  electrons join the metal from the Fe(CN)^~ ions which become oxidised. As we have noted before, this situation
  corresponds to dynamic equilibrium and once it is attained, no further net charge is possible. However, at the point
  of equilibrium, there is a charge separation between the elec­ trode and the solution, and this is the origin of the
  electrode potential established on the metal.

## Chapter 3: Electrode Kinetics 

* Quantitative controlled studies of electrode kinetics are conducted using three electrodes.
* The working electrode, the interface of interest.
* The reference electrode.
* The counter electrode. A sink for electrons (if the working electrode is an anode and a source if it's a cathode).
  It's there because we don't want any current flowing through the reference electrode.
* For a basic redox couple
* If we increase the potential of the electrode, electrons are more stable, the fermi level is reduced and the reaction
  of $Fe(CN)^{-3}_{6}(aq) + e^$ is less likely to occur. 
* Addition of electrolytes (like KCl) may be used to keep the distance at which quantum tunnelling is happening to 10-20
  Angstrom's.

# Voltaic Cell

* Consists of two half-cells, the _anode_ where oxidation reactions occur and the _cathode_ where reduction reactions
  occur.
* The electrons flow from anode to cathode, from where they are lost, to where they are gained.
* The electrode is continuously having a chemical reaction with the solution it's in. 
* On the cathode (copper) copper ions enter the solution, leaving behind 'holes' on the electrode.
* On the anode (zinc) ions enter the solution losing electrons (oxidation) and leaving them on the electrode.
* For the reaction to keep occurring the solution must be neutral. A salt bridge is used to prevent charge build up. 
* The pushing and pulling power of a cell reaction across the anode and cathode is called the _cell potential_
  ($E_{cell}$) or EMF/Voltage.
* Volt is defined so that a charge of 1C falling through a potential difference of 1V releases 1J of energy.
* A Coulomb is the amount of charge delivered by an Ampere each second.
* This where it connects with Gibbs energy. The more spontaneous the reaction (the more negative the Gibbs) the greater
  the EMF.

---

## Activity and Reaction Quotients

* Activity is a measure of effective concentration of a species under non-ideal conditions. Used to determine the real
  chemical potential rather than an ideal one.
* The equilibrium constant is the forward rate constant over the reverse rate constant. 

# Nernst equation

* How do we relate Gibbs energy to work in a reaction?
    * Energy is the ability to do work. Gibbs energy tells us the energy increase or decrease plus or minus that lost
      to entropy, it's the maximum amount of energy available for work with the reaction.
* Knowing this, if we equate the electrical work to the Gibbs energy we get the above $\Delta G = -nFE_{cell}$
* We know $\Delta G = \Delta G^0 - RTlnQ$
* $-nFE_{cell} = -nFE^0_{cell} - RTlnQ \rightarrow E_{cell} = E^0_{cell} + \frac{RT}{nF}lnQ$
* The dependence of cell potential on composition.
* $$E_{cell} = E_{cell}^\cdot - \frac{RT}{n_rF}lnQ$$

# Notes

* can think of the anode cathode interaction with the wire as a tug of war over the atoms in the wire.
* A neutral metal doesn't dissolve in solution. So when zinc 'gives' an electron to copper it 're-attaches' to the
  electrode.
* The Zinc electrode is wearing away no? It takes on a 2+ charge, dissolves in the solution and the electrons it lost go
  down the wire to the copper electrode. It's slowly dissolving into the solution.
* 20/10/22 11:19:18 
    * Electron transfer underpins everything, it's underpinned by quantum mechanics, energy band theory.
    * The solution stays neutral, it wants to remain neutral (relation to anode and cathode slide)
* 01/11/22 09:55:28 
    * redox couple. Copper 2+ and copper metal. So kind of like the reactant and the product.
    * The more positive the voltage (or potential at standard conditions for a couple) the more spontaneous the
      reductions. It's an amount of work to be overcome if it's negative, or, a redox couple with a negative sign
      for it's potential prefers to undergo oxidation (giving up electrons).
    * Platinum is used to create the electrons to determine standard potentials. We say that the reaction between
      hydrogen and platinum has a standard potential of zero volts.
        * This is because you need two electrodes to create something to measure. Even if you only want specific
          voltage for redox couple.
    * Spontaneous in terms of reference to this platinum and hydrogen transfer. There has to be a zero. Even if it's
      kind of arbitrary. The universal scale of spontaneity is absolute zero (third law) so this is just a relative
      spontaneity.
    * There is balancing involved in terms of electrons in a reaction. Apparently it's chem 101 just to figure out
      the oxidation states of each element
    * If you don't balance charges (through the salt bridge) eventually the electrode and solution will reach a
      chemical equilibrium and electrons wont be lost (say, on the anode side).
    * I was actually able to follow along in this class fairly well. Madness.
    * Voltage difference can also be used to measure or analyse pH.
* 03/11/22 10:55:36 
    * A relation between the equilibrium constant and the Gibbs energy. Rate is proportional to concentration
      in species. 
    * $R_{A \rightarrow B} = k[A]$ Where [A] is the concentration of A.
    * $R_{B \rightarrow A} = k'[B]$ Where [B] is the concentration of B.
    * If these two rates are equal to eachother $\frac{k}{k'} = K$
    * You can work out the equilibrium constant with the cell voltage.
    * The equilibrium constant tells you the ratio of the products to the reactant concentration. If K is big, then
      it's favourable. We don't require a large amount of reactants.
    * The downward slope of Gibbs energy is due to the tendency of the universe to increase it's entropy.
    * Nernst equation looks at the change in Gibbs energy at nonstandard conditions.
    * Nernst is useful for calculation in a fuel cell (apparently). 
    * Activity coefficient gets more and more complex depending on the environment. 
* 08/11/22 10:04:34 
    * Rates scale with temp. Energy barrier is lowered on account of addition of thermal energy.
    * Activation polarization, activation energy barrier for charge transfer.
    * $f_{\sum} = \frac{i}{nFA}$ "A modern form of Faraday's law"
    * Current as the expression of a rate (in the chemical sense).
* 10/11/22 10:59:22 
    * Not a fucking clue.
* 15/11/22 10:02:05 
    * In the Nernst approximation of the diffusion layer, concentration tapers off, has a linear change.
    * A diffusion limited current(?).
* 22/11/22 10:05:37 
    * Conductivity of electolytes
* 28/11/22 10:03:29 
    * Computational chemistry starts; part of the future according to Max.
    * Power to X technologies.
    * Catalysts are essential.
    * Exploring potential energy surface. The energy of a system of atoms at various locations in space. You've energy
      as a function of atomic positions (space).
* 28/11/22 14:23:11 
    * If, from the Volmer step, your hydrogen atom is too attached to the surface of the electrode (high binding
      energy). It's less likely to react with either a hydrogen again. The volcano plot. Just enough to be attached to
      the surface, react and then leave. This is what's need in catalyst (?).
    * The most active catalyst are really expensive.
* 30/11/22 15:02:22 
    * OER, at bare minimum you need to apply 1.23V.
* 01/12/22 11:07:19 
    * Why high p and t for Haber-Bosch?
        * Haber Bosch is exothermic meaning at high temperatures it's less thermodynamically favourable.
        * At low temperatures it's intermediates are thermodynamically favourable but shifting the equil towards reactants
          (making products more unstable).
        * You want high temperatures to make the products stable (graphing of red, blue and black).
    * Where do catalyst come into this?
        * > Nitrogen gas (N2) is very unreactive because the atoms are held together by strong triple bonds. The Haber
          process relies on catalysts that accelerate the scission of this triple bond.
        * Hydrogenation reduces double and triple bonds in hydrocarbons.
    * Negative potential shifts energy level down.
    * The thermodynamically neutral intermediates are the rate determining steps.
