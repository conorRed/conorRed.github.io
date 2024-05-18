*Build up historical context to see why Electric grid is the way it is*

Power system is a network of components deployed to supply, transfer and
use power. In particular, electric power.

The transformer allows the use of realy high voltages in generation and
transmission of Power.

Why do we need large voltages for efficient power transmission?

Initially start out with how to provide light with electricity rather
than gas. War of the currents: AC vs DC.

# Components of Electric Power System

## Electric Generator

Most electricity is generated using a turbo generator. Mechanical
energy, derived from fossil fuels spins a turbine rotor that induces
power into the surrounding stator.

A **generator** consists of a rotating part and a stationary part which
together form a magnetic circuit.

-   An n pole strator where each pole is a solenoid, that operates like
    a bar magnet.

-   The strator can be connected to a power source in such a way that a
    rotating magnetic field is produced.

-   The voltage from this power source are at different phases.

-   Detail how this rotating magnetic field is generated.

-   Product of superposition of magnetomotive force.

-   For now, if we just think of the rotor as having a magnetic moment
    that is trying to follow the rotating magentic field.

Equivalent circuit enables us to analyse performance of motor. Going
down the rabbit hole of slip frequency and all that.

## Load

Power systems deliver energy to *loads* which form a function

## Transmission

Conductors carry power from source to load.

---

Generators generate sinusoidal output (natural rotation). We can turn
the rotation of coil of wire into a sinusoidal wave.

If we look at a loop in a uniform magnetic field.

Comes directly from translating mechanical energy (through rotation) to
electrical energy.

RMS value $$P_{DC} = P_{AC}$$ $$I^2R = \frac{1}{2}I_{max}^2R$$
* $$I_{DC} = \sqrt{\frac{1}{2}I_{max}^2}$$
* $$I_{DC} = \frac{I_{max}}{\sqrt{2} }$$

From Faraday's law we know that the emf generated in a coil is
proportional to the magnetic flux. If you've a rotating coil, the flux
is change by some proportion to the angular velocity.

Things like impedance, reactance are just products of the alternating
current.

# Power in AC circuits

* $p = Vsin(\omegat) \times Isin(\omegat - \phi)$
* $p = VI(sin(\omegat)sin(\omegat - \phi)$
* With a trig identity.
* $p = VI(\frac{1}{2}(cos(\phi) - cos(2\omegat - \phi)))$
* $V_{rms}\timesI_{rms} = \frac{VI}{2}$
* $p = V_{rms}I_{rms}(cos(\phi) - cos(2\omegat - \phi))$

## Power in a Capacitive Circuit

* $p = VIsin(2\omegat)$. 
* $P_{avg} = 0$.
* Transferred energy is always released back into the circuit.

## Power in an Inductive Circuit

* $p = -VIsin(2\omegat)$. 
 
# Magnetic Circuits

How is power transferred to a load in this circuit?

# Phasors

One of the main reasons for using AC (according to Halliday) is that the
magnetic field is changing, meaning we can use transformers to step up
or step down current.

