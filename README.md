# Regavaka

An automated Low-Level Intrusion Detection System (IDS) and Cyber Deception Engine implemented in C. This subsystem protects the core kernel environment by sandboxing unauthorized access attempts into an isolated decoy terminal.

## Key Mechanisms
1. **Privilege Escalation Interception:** Detects unauthorized `sudo` or `admin` triggers.
2. **Decoy Environment Routing:** Isolates the threat actor without interrupting system stability.
3. **Silent Forensics Logging:** Transmits captured telemetry data over the Serial UART Interface for threat intelligence analysis.

## Project Structure
- `include/decoy.h` - Subsystem header definitions.
- `src/decoy.c` - Core logging and isolation logic.
