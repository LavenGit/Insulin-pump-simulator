# Tandem t:slim X2 Insulin Pump Simulator

## 📌 Overview

This project is a desktop simulation of the **Tandem t:slim X2 insulin pump**, developed using C++ and the Qt framework.

The simulator is based on the functionality and interface described in the Tandem t:slim X2 **software version 7.8 documentation**. It provides an interactive environment for exploring insulin pump operations, including glucose monitoring, bolus calculations, personal profiles, battery management, and safety features.

**Official Reference:** https://www.tandemdiabetes.com/support/resources/documents

**Note:** This is an educational simulation, not a medical device. It does not deliver insulin and should not be used for medical decisions.

## Features

### 🔐 Power and Security
- Simulated power-on and power-off functionality.
- PIN-based access to the pump interface.
- Default PIN: **3004**.
- Users can change the PIN through the application settings.
- PIN changes are session-based and reset to the default when the application restarts.

### Continuous Glucose Monitoring (CGM)
- Simulates glucose readings and displays them on an interactive graph.
- Generates updated glucose readings every 10 seconds.
- Displays glucose history and alerts for readings outside the configured thresholds.
- Stores simulated glucose readings in a JSON history file.

### Insulin Bolus Calculator
- Calculates simulated bolus amounts using carbohydrate intake, insulin-on-board values, and personal profile settings.
- Supports immediate and extended bolus calculations.
- Allows users to override a calculated bolus.
- Includes maximum bolus warnings and simulated bolus cancellation.
- Records bolus calculations for history viewing.

### Personal Profiles
- Create personal insulin profiles with configurable settings.
- Edit, duplicate, and delete existing profiles.
- Configure basal rates, carbohydrate ratios, correction factors, target glucose levels, insulin duration, and maximum bolus amounts.
- Activate a selected profile while automatically deactivating the others.
- Save profile configurations locally using JSON.

### Battery Management
- Simulates battery depletion and charging.
- Displays battery status within the application.
- Includes low-battery warnings and simulated shutdown behavior.

### History and Settings
- View simulated glucose readings, bolus history, and glucose alerts.
- Manage personal profiles and timed settings.
- Store application-generated data locally.

## 🎥 Simulation Demonstration

The `Video Recordings` folder contains a scenario video demonstrating how the insulin pump simulator works.

The recording provides a walkthrough of the application, showing the interface, user interactions, and the main features of the simulation.

**Video Location:** `Video Recordings/Sceanrio.mp4`

The video is useful for understanding the project without having to install and run the application.

## Technologies Used

- **Language:** C++11
- **Framework:** Qt Widgets
- **Interface Design:** Qt Designer
- **Data Visualization:** Qt Charts
- **Data Storage:** JSON
- **Build Tools:** qmake and GNU Make
- **Development Environment:** Qt Creator / Ubuntu Linux

## Project Structure

```text
Insulin-pump-simulator/
│
├── README.md
├── Requirements Traceability Matrix.pdf
├── Use Case Model.pdf
│
├── src/
│   ├── COMP3004Project.pro
│   ├── main.cpp
│   ├── mainwindow.cpp / .h / .ui
│   ├── batterymanager.cpp / .h
│   ├── boluscalculator.cpp / .h
│   ├── BolusInfo.h
│   ├── bolusmenu.cpp / .h / .ui
│   ├── config.cpp / .h
│   ├── glucosemonitoring.cpp / .h
│   ├── historylogger.cpp / .h
│   ├── optionsmenu.cpp / .h / .ui
│   ├── personalprofiles.cpp / .h / .ui
│   ├── profile.h
│   ├── timedsettingsprofiles.cpp / .h / .ui
│   ├── timedSettingsUtils.cpp / .h
│   ├── timeProfile.h
│   ├── ui_icons.qrc
│   │
│   └── ui_icons/
│       ├── resources.qrc
│       └── Interface icons and images
│
└── Video Recordings/
    └── Sceanrio.mp4
```

## Installation and Running the Project

### Requirements

Before running the project, ensure the following are installed:

- Ubuntu Linux
- C++ compiler (G++)
- Qt development libraries, including Qt Widgets and Qt Charts
- qmake
- GNU Make

The project uses Qt's `.pro` build configuration. A compatible Qt version and its corresponding development libraries are required.

### 1. Clone the Repository

Open a terminal and run:

```bash
git clone https://github.com/LavenGit/Insulin-pump-simulator.git
cd Insulin-pump-simulator
```

### 2. Install Dependencies

For a Qt 5 development environment on Ubuntu:

```bash
sudo apt update
sudo apt install build-essential qtbase5-dev qt5-qmake libqt5charts5-dev
```

### 3. Generate the Makefile

Navigate to the `src` directory:

```bash
cd src
qmake COMP3004Project.pro
```

This generates the Makefile needed to compile the application.

### 4. Build the Application

```bash
make
```

### 5. Run the Simulator

```bash
./COMP3004Project
```

If the build configuration uses a different executable name or output directory, run the executable generated by `make`.

### Alternative: Qt Creator

You can also run the project through Qt Creator:

1. Open Qt Creator.
2. Select **Open Project**.
3. Open `src/COMP3004Project.pro`.
4. Select a compatible Qt desktop kit.
5. Configure and build the project.
6. Click **Run**.

### Default PIN

When accessing the simulator, use:

```text
3004
```

The PIN can be changed within the application's settings, but the current implementation resets it to `3004` when the application restarts.

### Notes

- The application generates JSON files for simulated glucose readings and bolus history.
- Personal profiles are saved locally and can be reused between sessions.
- Generated application data and build files are excluded from version control when the provided `.gitignore` rules are applied.
- Use a consistent Qt version and compatible libraries when building the project to avoid compilation or compatibility issues.
- If the build configuration changes, rerun `qmake` before rebuilding.

## Project Documentation

The repository includes two supporting documents describing the simulator's design and requirements.

### Requirements Traceability Matrix

**File Location:** `Requirements Traceability Matrix.pdf`

This document connects the project's functional requirements to the implementation. It helps show how features such as security, battery management, glucose monitoring, and personal profiles are addressed in the application.

### Use Case Model

**File Location:** `Use Case Model.pdf`

This document illustrates the main interactions between a user and the insulin pump simulator, including the operations available through the application interface.

Together, these documents provide additional context about the project's requirements and software design.

## Reference

The simulator was developed with reference to the Tandem t:slim X2 insulin pump, particularly the software version 7.8 documentation.

**Official Documentation:** https://www.tandemdiabetes.com/support/resources/documents

This project is independently developed for educational purposes and is not affiliated with or endorsed by Tandem Diabetes Care.

## Repository

**GitHub:** https://github.com/LavenGit/Insulin-pump-simulator
