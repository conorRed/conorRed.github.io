import matplotlib.pyplot as plt
import numpy as np
import scipy.stats as stats
import math

variance = [0.5, 6, 10]
estimate = [34, 40]
fig, ax = plt.subplots(1, 3, figsize=(15,5), sharey=True)
for mu in estimate:
    for i, var in enumerate(variance):
        sigma = math.sqrt(var)
        x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
        ax[i].plot(x, stats.norm.pdf(x, mu, sigma), label="Process {index}".format(index=i))
        ax[i].set_xlabel("Impact Score")
fig.suptitle("Uncertainty distribution for two point estimates")
plt.legend(title="Proceses")
plt.savefig("uncertainty_show", dpi=100)
plt.show()
