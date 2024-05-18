---
title: Shockley–Queisser Limit paper assignment
author: Conor Redington
geometry: "margin=2cm"
---

### 1. What are the author's assumptions in their approach?

* "photons with energy greater than $hv_g$ produce precisely the same effect as photons of energy $hv_g$, while photons of
  lower energy will produce no effect". 
* That only a single p-n junction solar cell is used. Something like a silicon solar cell with a potential barrier of
  0.7V.
* All photons are emitted with blackbody radiation spectrum.
* The authors also analyse the IV characteristics of the cell with a few assumptions. They detail five processes that
  affect the relationship of current and voltage. The relationship is defined then according to the detailed balanced
  theory when all these processes sum to zero.

### 2. What does the term “ultimate efficiency” mean?

The ultimate efficiency is defined for a given band gap $x_g$. It's a ratio between the power delivered to the solar
cell in photons with enough energy to create electron-hole pairs per second over the number of photons incident upon the
cell.

* $Q_s$ which is the number of quanta of frequency greater than or equal to $v_g$ incident upon an area per unit time
  for blackbody radiation at temperature $T_s$.
* $P_s$ is the total energy density falling upon unit area in unit time for blackbody radiation at temperature $Ts$. 
* $v_g$ is the frequency of the photon that can create an electron-hole pair (or can bridge the band gap). 
* h is Planck's constant.
* $$u(x_g) = \frac{hv_gQ_s}{P_s}$$


### 3. What is the “nominal efficiency”?

* The nominal efficiency tries to take into account the expected IV characteristics of the cell with the limitations of
  recombination and spectral losses. 
* $$\frac{V_{oc}*I_{sc}}{P_s}$$
* This is similar to what we've used in class where we look at power conversion as $\frac{P_{max}}{P_{in}}$, $P_{max}$
  as the $V_{oc}*I_{sc}$ scaled by the Fill factor.

### 4. What kind of losses does this approach take into account?

* Recombination losses, introducing a factor $f_c$ that presents the fraction of electron-hole recombination not
  contributing to current. This factor plays a role in defining short circuit current and open circuit voltage. It's
  used to scale the photons that can bridge the band gap for $Q_c$ and $Q_s$ which is the flux of photon's that can
  create electron-hole pairs.
* Losses due to the spectrum of radiation emitted by the sun. Not all of the sun's radiation carries a quanta of energy
  greater than or equal to the band gap of the cell.

### 5. Where is the true physical limit of silicon cell efficiency and what processes determine it?

* The author's answer both these questions in the conclusion but I was unable to follow their logic fully.
* They seem to point mainly to recombination as the difficulty in reaching maximum efficiency. They also highlight
  evidence that impurities might also determine physical limits on efficiency.
