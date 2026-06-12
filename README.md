# Audio-Noise-Reduction-Using-FFT-Based-Low-Pass-Filter
MATLAB project for audio denoising using FFT analysis and low-pass filtering.

# Overview
The objective of this project is to improve audio quality by removing high-frequency noise while preserving the main characteristics of the original signal. The filtering process is performed using FFT analysis, frequency thresholding, and Inverse FFT (IFFT) reconstruction.

# Features
- Read audio files in WAV format
- Add Gaussian noise to simulate real-world interference
- Analyze frequency components using FFT
- Apply a low-pass filter with a 1500 Hz cutoff frequency
- Reconstruct filtered audio using IFFT
- Visualize signals in both time and frequency domains
- Export noisy and filtered audio files

# Processing Flow
```text
Original Audio
      │
      ▼
Add Gaussian Noise
      │
      ▼
FFT Analysis
      │
      ▼
Low-Pass Filter (1500 Hz)
      │
      ▼
Inverse FFT
      │
      ▼
Filtered Audio
```

# MATLAB Workflow
## 1. Audio Acquisition
The original audio signal is loaded using `audioread()` and visualized in the time domain.

## 2. Noise Injection
Gaussian noise with an amplitude of 0.01 is added to the original signal to simulate environmental or electronic interference.

## 3. Frequency Domain Analysis
The noisy signal is transformed into the frequency domain using Fast Fourier Transform (FFT). The magnitude spectrum is then analyzed to observe the distribution of frequency components.

## 4. Low-Pass Filtering
A frequency threshold of 1500 Hz is applied. Frequency components above this cutoff are removed while lower frequencies are preserved.

## 5. Signal Reconstruction
The filtered spectrum is converted back to the time domain using Inverse Fast Fourier Transform (IFFT).

## 6. Audio Export
The filtered signal is saved as a new WAV file for listening and comparison.

## Output Files
| File | Description |
|--------|------------|
| `audioasli.wav` | Original audio recording |
| `audiowithnoise.wav` | Audio contaminated with Gaussian noise |
| `audiofiltered.wav` | Audio after FFT-based filtering |

# Generated Visualizations
The program produces five main plots:
1. Original Audio Signal

<img width="426" height="382" alt="image" src="https://github.com/user-attachments/assets/d41dd0a1-ece4-42d3-b878-7e957e4c7f1a" />

2. Noisy Audio Signal

<img width="431" height="387" alt="image" src="https://github.com/user-attachments/assets/8c9ddf93-4105-48a0-8e10-08446b0a0d37" />

3. FFT Magnitude Spectrum (PSD)

<img width="423" height="372" alt="image" src="https://github.com/user-attachments/assets/9efdb342-5a52-4bc4-90c7-a8ca84561756" />

4. Filtered Spectrum

<img width="430" height="382" alt="image" src="https://github.com/user-attachments/assets/425a3cca-84f9-4a3e-b612-746e568a8b03" />

5. Filtered Audio Signal

<img width="433" height="390" alt="image" src="https://github.com/user-attachments/assets/b7aaf11f-369c-48a7-bfb9-4cb501c27f18" />

# Results
The FFT-based low-pass filter successfully reduces most of the high-frequency noise introduced into the audio signal. Frequency components above 1500 Hz are significantly attenuated, resulting in a cleaner waveform that closely resembles the original recording.

Although some residual noise remains and slight audio attenuation may occur, the overall audio quality is improved and demonstrates the effectiveness of frequency-domain filtering techniques.

# Audio Samples
Original Audio: https://drive.google.com/file/d/1JnzL-VmWuK-eX7MdO3s23wwgaaBv2o3y/view?usp=sharing
Audio with Noise: https://drive.google.com/file/d/1YsDL2AtrsSO4rga-INBMrpgezjt_qvTg/view?usp=sharing
Filtered Audio: https://drive.google.com/file/d/15RMizqU9nhfTWRT7fbOuoIfqfCWNCrOf/view?usp=sharing

# Technologies Used
- MATLAB
- Fast Fourier Transform (FFT)
- Inverse Fast Fourier Transform (IFFT)
- Digital Signal Processing (DSP)

# Author
Adhitya Noer Effendi 235150307111024
