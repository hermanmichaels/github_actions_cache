import matplotlib.pyplot as plt
import numpy as np


def plot():
    x = np.linspace(0, 10, 50)
    y = np.sin(x)
    plt.plot(x, y)
    plt.savefig("plot.png")


if __name__ == "__main__":
    plot()