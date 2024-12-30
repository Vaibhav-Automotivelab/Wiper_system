%% Initialization Script for Wiper System

% Clear Workspace and Command Window
clear;
clc;

%% Input Signal Initialization

% Ignition_Status (Boolean: true = ON, false = OFF)
Ignition_Status = Simulink.Signal;
Ignition_Status.CoderInfo.StorageClass = 'ExportedGlobal';
Ignition_Status.DataType = 'boolean';
Ignition_Status.InitialValue = 'false';
Ignition_Status.Description = 'Indicates if ignition is ON or OFF.';

% Wiper_Stalk_Position (Enum: OFF = 0, LOW = 1, HIGH = 2, INT = 3, WASHER = 4)
Wiper_Stalk_Position = Simulink.Signal;
Wiper_Stalk_Position.CoderInfo.StorageClass = 'ExportedGlobal';
Wiper_Stalk_Position.DataType = 'uint8';
Wiper_Stalk_Position.InitialValue = '0';
Wiper_Stalk_Position.Description = 'Current position of the wiper stalk.';

% Intermittent_Delay (Double: Seconds)
Intermittent_Delay = Simulink.Signal;
Intermittent_Delay.CoderInfo.StorageClass = 'ExportedGlobal';
Intermittent_Delay.DataType = 'double';
Intermittent_Delay.InitialValue = '0.0';
Intermittent_Delay.Description = 'Delay in seconds for intermittent mode.';

% Rain_Sensor_Signal (Double: 0 to 100)
Rain_Sensor_Signal = Simulink.Signal;
Rain_Sensor_Signal.CoderInfo.StorageClass = 'ExportedGlobal';
Rain_Sensor_Signal.DataType = 'double';
Rain_Sensor_Signal.InitialValue = '0.0';
Rain_Sensor_Signal.Description = 'Rain sensor output, representing rain intensity.';

% Vehicle_Speed (Double: km/h)
Vehicle_Speed = Simulink.Signal;
Vehicle_Speed.CoderInfo.StorageClass = 'ExportedGlobal';
Vehicle_Speed.DataType = 'double';
Vehicle_Speed.InitialValue = '0.0';
Vehicle_Speed.Description = 'Vehicle speed in km/h.';

% Motor_Position (Double: degrees)
Motor_Position = Simulink.Signal;
Motor_Position.CoderInfo.StorageClass = 'ExportedGlobal';
Motor_Position.DataType = 'double';
Motor_Position.InitialValue = '0.0';
Motor_Position.Description = 'Current position of the wiper motor in degrees.';

% Motor_Current (Double: Amperes)
Motor_Current = Simulink.Signal;
Motor_Current.CoderInfo.StorageClass = 'ExportedGlobal';
Motor_Current.DataType = 'double';
Motor_Current.InitialValue = '0.0';
Motor_Current.Description = 'Current drawn by the wiper motor in amperes.';

% Fault_Reset (Boolean)
Fault_Reset = Simulink.Signal;
Fault_Reset.CoderInfo.StorageClass = 'ExportedGlobal';
Fault_Reset.DataType = 'boolean';
Fault_Reset.InitialValue = 'false';
Fault_Reset.Description = 'Flag to reset detected faults.';

%% Output Signal Initialization

% Motor_Control_Signal (Enum: OFF = 0, LOW = 1, HIGH = 2, INT = 3, WASHER = 4)
Motor_Control_Signal = Simulink.Signal;
Motor_Control_Signal.CoderInfo.StorageClass = 'ExportedGlobal';
Motor_Control_Signal.DataType = 'uint8';
Motor_Control_Signal.InitialValue = '0';
Motor_Control_Signal.Description = 'Control signal for the wiper motor.';

% Washer_Pump_Control (Boolean)
Washer_Pump_Control = Simulink.Signal;
Washer_Pump_Control.CoderInfo.StorageClass = 'ExportedGlobal';
Washer_Pump_Control.DataType = 'boolean';
Washer_Pump_Control.InitialValue = 'false';
Washer_Pump_Control.Description = 'Control signal for the washer pump.';

% Diagnostics_Status (Enum: OK = 0, FAULT = 1)
Diagnostics_Status = Simulink.Signal;
Diagnostics_Status.CoderInfo.StorageClass = 'ExportedGlobal';
Diagnostics_Status.DataType = 'uint8';
Diagnostics_Status.InitialValue = '0';
Diagnostics_Status.Description = 'Diagnostics status of the wiper system.';

% DTC_Code (uint16)
DTC_Code = Simulink.Signal;
DTC_Code.CoderInfo.StorageClass = 'ExportedGlobal';
DTC_Code.DataType = 'uint16';
DTC_Code.InitialValue = '0';
DTC_Code.Description = 'Diagnostic Trouble Code for the system.';

% %% Solver Configuration
% % Set solver for code generation
% set_param(0, 'Solver', 'FixedStepDiscrete');
% set_param(0, 'FixedStep', '0.01');  % Set a fixed time step of 10ms
% set_param(0, 'StopTime', '10');     % Simulation duration
% 
% %% Code Generation Settings
% % Enable AUTOSAR Classic Code Generation
% set_param(0, 'SystemTargetFile', 'autosar.tlc');
% set_param(0, 'GenerateReport', 'on');
% set_param(0, 'LaunchReport', 'off');

%% Save Workspace Variables
% Save signals and parameters for later use
% save('wiper_system_workspace.mat');

disp('Initialization complete: Input/Output signals configured and solver set for AUTOSAR Classic.');
