# StableImageCrypt
An image encryption algorithm based on chaotic jumping and parallel encoding.

[**Paper**](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10242097) | [**Project Page**](https://github.com/yingtian22/StableImageCrypt)

> 🚧 Our code is currently being cleaned up and will be released soon. Stay tuned!

---

## 📝 Brief

This project implements a novel **image encryption algorithm** that addresses the limitations of traditional chaotic systems. While low-dimensional chaotic systems suffer from limited key space and weak security, and high-dimensional ones are too complex and inefficient, this method introduces a **stable and secure alternative**.

Key innovations include:
- **Chaotic Jumping Mechanism**: Utilizes random switching between two uncorrelated 1D chaotic maps to eliminate linear correlations.
- **Parallel DNA Encoding Groups**: Dynamically forms encoding groups and executes multiple encryption results in parallel.
- **Stability-Driven Optimization**: Selects the most stable ciphertext output from multiple candidates to reduce instability.
- **High Security and Robustness**: Demonstrates strong resistance to plaintext attacks and suitability across diverse image types and sizes.

This approach achieves **enhanced security**, **high sensitivity to input**, and strong **applicability in real-world image encryption scenarios**.

## 📄 How to Cite

If you use this work in your research, please cite the following paper:

```bibtex
@article{zhang2023stable,
  title={Stable image encryption algorithm based on expanded one-dimensional chaotic jumping and parallel encoding operation grouping},
  author={Zhang, Tianshuo and Ma, Yiqun},
  journal={IEEE Access},
  volume={11},
  pages={108746--108760},
  year={2023},
  publisher={IEEE}
}
```
