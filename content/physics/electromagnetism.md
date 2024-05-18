---
author: Conor Redington
geometry: "margin=2cm"
output: pdf_document
colorlinks: false
title: Electromagnetism Notes
---
# Electromagnetism

_trying to aggregate_

# Broad strokes

* We've two types of fields, electric and magnetic.
* There's two types of energies to these fields, electric potential and magnetic potential (?).
* Induction. Faraday's law combines these two fields experimentally in that a moving loop in a magnetic field generates an emf in
  that loop (hence, an electric field).
* Why does this happen?
* Maxwell then said, if a changing magnetic field can induce an electric field, could a changing electric field induce a
  magnetic field.
  
# Electrostatics

_following along from Chpt 21 in University Physics_

## Electric Charge

* Charge is a property of particles, like mass. It's what determines their interaction with the _electromagnetic force_
* The unit of charge is the coulomb. Because conglomerations of particles are more common in nature a coulomb is the
  negative charge of $6\times10^{18}$ electrons
* When we're trying to determine the affect a charged particle has on the space around it, we define a field. That is,
  when you place another charged particle (the set of things affected by the field) in the space around it, what force
  will it experience? We define the field as the force per unit of charge placed in it. So you then have some
  determinism as to what force will be experienced by a charge you place into the field (provided you're using the same
  units as the test charge)

# Electric Current and Electromotive Force

_following along from chapter 25 of University Physics_

* Current is any motion of charge from one region to another.
* Free electrons are naturally occurring in a conducting material.
* If an electric field is applied the electrons move with a force dictated by that field. They 'bump' into positive ions
  and in general there is a mass of electrons slowly crawling their way along the conductor. They do this at a velocity
  called the _drift velocity_.
* The kinetic energy of the electrons is transferred to the ions when they collide, this causes a rise in temperature of
  the material. **Most of the work done by the field goes into heating up the material.**
* Do electrons collide with one another? Presumably yes, but they're much smaller than the atoms so maybe it's less
  frequent.
* In conductors the movement after the application of a field is done by electrons. In _conventional current_ the free
  charges are assumed to be positive. Current is a scalar so direction doesn't matter. It's the net charge flowing
  through a cross sectional area per unit time
* When a electric field is applied all free moving electrons go one direction and all free moving positive charges go
  the other.
* Drift velocity is in the same direction as the field if we assume that the free moving charges are positive.
* For metals at a given temperature, the current density ($\vec{J}$) is generally proportional to the resistivity of the material.
  Current density is current for a given cross sectional area.
* $$\rho = \frac{E}{J}$$
* Current is the rate of change of charge, it can also be useful to look at current per unit area, the rate of change of
  charge through a particular area.
* $$i = \frac{dQ}{dt}$$
* $$dQ = qnAv_ddt; Av_ddt \text{ basically a small volume of charge}$$
* $$\vec{J} = \frac{i}{A} = nq\vec{v_d}$$
* > For simple materials such as metallic conductors, the current density is proportional to the electric field.
* The proportionality constant is known as conductivity.

# Electric field lines

* Indicate the direction of the electric field. 
* Magnitude of the electric field is proportional to the number of lines crossing a unit area. The closer the lines, the
  stronger the field. 
* Start on positive charges and end on negative charges. The number of starting lines is proportional to the charge.

## Electric flux

* *Gauss' law* relates electric field at points on a closed Gaussian surface (just an imaginary concentric sphere
  surrounding a charge) to the net charge of the enclosed surface
* If we know the charge, we can determine the field at a point, if we know a field we can determine the source charge.
  We need a measure of the field at a point on this Gauss surface.
* For a tiny patch of a flat surface $\Delta{A}$ the amount of electric field going through this patch is
  $Ecos(\theta)\Delta{A}$ because if the field is perpendicular to the surface the x component is the only portion of it
  acting on the surface. The 'amount' of electric field 'piercing' this area is $\Delta{\phi}$ 
* $\Delta{\phi} = E\cdot\Delta{A}$ dot product will get the x component of the electric field
* The total flux can then be $\phi = \int{\vec{E} \cdot d\vec{a}}$ vector integrals?
* The flux allows us to know directionality too. Because A is a vector also, meaning that if E switches direction the
  angle $\theta$ becomes 180 and the dot product flips.
* An inward piercing field is negative flux and an outward piercing field is positive flux
* The SI unit of flux is $N/m^2/C$ it's a magnitude, an amount.
* $\oint{\vec{E} \cdot d\vec{A}}$
* The area vector A is always perpendicular to the surface and always points away from the interior of the Gaussian
  surface
* Gauss' law: $\epsilon_0 \oint{\vec{E} \cdot d\vec{A}} = q_{enc}$
* If there is a Gaussian surface with no charge enclosed, any field lines entering it also leave it.

# Energy of electric field

* **Electric potential** (or potential) is the electric potential energy per unit charge.
* Potential at some point is dependent on what is chosen to have zero potential as potential is only useful as a
  quantity of change.
* Often, the ground is chosen. If something is 50 volts the difference in potential between it and the ground is
  50V.
* In some case (I'm think specifically in bonding models here) the potential is chosen to be zero at an infinite
  distance ($r \rightarrow \infty$). 
* Potential difference is a measure of how much energy a charge can acquire, or, how much work it can do.
* Important to relate the notion of charge **and** voltage defining the energy transferred in some movement.
* The work done by a charge in moving from a to b is the negative of the change in potential energy.
* $$W = -q(V_b - V_a) = -qV_{ba}$$
* W is force by distance. $W = qEd$ where d is the distance from a to b
* $$-qV_{ab} = qEd \rightarrow E = -\frac{V_{ab}}{d}$$
* What is the electric potential for a point charge?
* The main ease of use it seems is that potentials add as scalars whereas fields add as vectors.

# Magnetism

* Elementary particles have an intrinsic magnetic field around them. 
* Magnetic poles always appear in pairs, their has not been found to exists an isolated south or north pole of a magnet
* The nature of the magnetic force is different to the electric force. Through experimentation with velocities of
  particles it's found that if we want to know a magnetic field $B$ we measure the force experienced by charges
  fired through it at different velocities. There is a line where the particle experiences no force and all forces
  experienced after that seem proportional to $vsin(\theta)$ where $\theta$ is the angle between velocity vector and
  zero force line. The force of the field always seems to act perpendicular to the velocity vector.
* $$\vec{F_b} = q\vec{v} \times \vec{B}$$
* The force of the  magnetic field relies on the movement of charge
* $\vec{F_b}$ can never change the particle speed because it's always acting perpendicular, so it doesn't contribute to
  it's kinetic energy. It can change it's direction though which is changing its acceleration?
* The magnetic force on a conductor when you've a moving charge through it is $\vec{F_b} = I\vec{l} \times \vec{B}$ If
  you let l become infinitely small then you can find the force at all points along any shaped conductor

# Electromotive Force

* the influence that makes current flow from lower to higher potential is electromotive force. It's an energy per unit
  charge though, not a force.
* If you make a circuit with an electric field pointing one direction. At some point along the field work has do be done
  for the free particles to reset at the top of the circle. In the sense that they need to overcome the negative work
  being done on them by the field when they get over halfway around the circle. The work done by the emf then is just
  the opposite of the work done by the field.
* You would want another electric field at the bottom of the circle to give the free particles a 'push' against the
  oncoming field
* There is internal resistance in the emf source too so the actual current flow in the circuit must take this into
  account too.
* SI unit: Joule/coulomb as it's a measure of the work that needs to be done per unit charge to lift it up the energy
  well.
  
# Induction

* Transfer of mechanical energy to electrical energy.
* If you move a magnet towards a wire it can induce a current proportional to the speed of it's motion and the pole
  directed towards the loop current. The current is 'induced' and the work done per unit charge to induce that current
  is the induced emf.
* A current and emf is induced when the number of magnetic field lines passing through a loop is changing.
* The emf here, is the energy provided to induce the motion of the current that we see. A force that causes free
  particles to move away from lowest potential.
* If we define magnetic flux (field perpendicular to a surface) as $\phi_B = \oint{\vec{B}d\vec{A}}$ where area is the
  surface area of the loop. Faraday's law can then be: the magnitude of the emf induced is the time rate of change of
  the magnetic flux $emf = -\frac{d\phi_B}{dt}$ (Faraday's law)
* If the same flux passes through N loops $emf = -N\frac{d\phi_B}{dt}$ 

# Lenz's law

* An induced current will produce a magnetic field that will oppose the magnetic flux that induced the current.
* ![lenz's law](physics/img/lenzlaw.png) 

# Capacitance

* The capability of a material to store electric charge.

## Explain how a battery works

[Cool vid and visualisation](https://www.youtube.com/watch?v=4-1psMHSpKs)

# Waves

* The goal of wave equation is to describe the wave as a whole not any specific point on the wave moving through time 
* Actually, the crest of waves move. 
* Movement of sine function through time could be thought of as angular speed
* ![sine wave](physics/img/sinewave.png) 
* Waves are ultimately generated by oscillators

Oscillators

![oscillators](physics/img/oscillators.png)

* It's similar to how we define a point in space in general except we're confined to an axis.
* As a point moves through space we have acceleration and velocity that pop out of position at a given time
* Oscillation is a repeated movement so we must return to an initial value, this is why the sine and cos functions are
  useful as they are defined on a circle.
* The amplitude can be thought of as the radius of the circle

# Notes

* 22/09/22 13:46:02 Introduction to Electromagnetism
    * Apparently Ireland gets 10% of the sun radiance in the winter months as it does in the summer months
    * Force on a curved path. For each chunk of the path $dl$ the net force may help you, or not. This is where we can
      use the dot product to figure out it's affect on $dl$. It's a path integral, we don't have to consider it an arc
      because it's such a tiny chunk?
    * Energy operates as a state function here too. Even though Work is derived from a path integral?
    * Bigger the distance you do work over, the smaller the avg. work e.g. catching a ball
    * Time and symmetrical laws 'causing' conservation. Emmy Noether.
    * Try and review worked examples, to make sure they make sense.
* [Thought this was a cool video](https://www.youtube.com/watch?v=KGJqykotjog)
    * Give's a good visualisation of de-localized electrons.
* Fields do the work. In the case of a circuit, the load is considered some resistance that energy is put into. It's the
  fields that the current generate that cause the electrons near the load to accelerate towards the ions of the load and
  do work. The electrons drift as well, but it's the field effect that travels at the speed of light?
