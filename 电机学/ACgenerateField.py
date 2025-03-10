# import matplotlib.pyplot as plt
# import numpy as np

# W1 = np.linspace(0, 1, 1000)
# W2 = np.linspace(0, 1, 1000)
# W3 = np.linspace(0, 1, 1000)

# W1_re = np.cos(W1)
# W2_re = np.cos(W2+np.pi*2/3)
# W3_re = np.cos(W3+np.pi*4/3)

# W1_im = np.sin(W1)
# W2_im = np.sin(W2+np.pi*2/3)
# W3_im = np.sin(W3+np.pi*4/3)

# plt.plot(W1_re, W1_im, label='W1')
# plt.plot(W2_re, W2_im, label='W2')
# plt.plot(W3_re, W3_im, label='W3')
# plt.legend()

# for i in range(0, 1000, 100):
#     plt.plot([0, W1_re[i]], [0, W1_im[i]], 'r--')
#     plt.plot([0, W2_re[i]], [0, W2_im[i]], 'g--')
#     plt.plot([0, W3_re[i]], [0, W3_im[i]], 'b--')

import matplotlib.pyplot as plt
import matplotlib.animation as animation
import numpy as np

W1 = np.sin(np.linspace(0, 10, 1000))
W2 = np.sin(np.linspace(0, 10, 1000)+np.pi*2/3)
W3 = np.sin(np.linspace(0, 10, 1000)+np.pi*4/3)

value = []

for i in range(1000):
    value.append((W1[i]*np.cos(0)+W2[i]*np.cos(np.pi*2/3)+W3[i]*np.cos(np.pi*4/3), W1[i]*np.sin(0)+W2[i]*np.sin(np.pi*2/3)+W3[i]*np.sin(np.pi*4/3)))

fig, ax = plt.subplots()
x = np.linspace(0, 1, 1000)
line, = ax.plot([], [], 'r-')

def init():
    line.set_data([], [])
    return line,

def update(frame):
    line.set_data([0, value[frame][0]], [0, value[frame][1]])
    return line,

ani = animation.FuncAnimation(fig, update, frames=range(1000), init_func=init, blit=True)
plt.show()
    