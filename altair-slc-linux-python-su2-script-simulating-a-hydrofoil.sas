%let pgm=altair-slc-linux-python-su2-script-simulating-a-hydrofoil;

%stop_submission;

Altair slc linux python su2 script simulating a hydrofoil

Source
https://su2code.github.io/tutorials/Inc_Inviscid_Hydrofoil/

Note: There is a windows SU2 package, created within the last few months, but I could not get  it to work.
      I think linux is a better platform for SU2 (and other applications?)

Too long to post here, see
https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil

HishRes Hydrofoil Pressure Distribution
https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil/blob/main/hydrofoil_right_top.png

MORE USEFULL LINE PRINTER PLOTS?

        PRESSURE
                                     Surface Contour plot of Pressure by Y*X.
         -0.075            0.175            0.425     X      0.675            0.925            1.175
       -----+----------------+----------------+----------------+----------------+----------------+---
       |                                                                         LOW to HIGH        |
       |    SURFACE PRESSURE BY Y*X                                    Symbol     PRESSURE          |
       |                                                                                            |
       |                                                               11111  -0.692 - -0.418       |
     Y |       LOWEST PRESSURE MX LIFT                                 22222  -0.418 - -0.144       |      Y
  0.10 +                                  LOW PRESSURE LIFT            33333  -0.144 -  0.130       +   0.10
       |              11111122 222 2 22                                44444   0.130 -  0.405       |
       |          1111                  2 2 2 22                       55555   0.405 -  0.679       |
  0.05 +    MAX  11                              2 2 2 2                                            +   0.05
       |PRESSURE 55                                      2 3 33                                     |
       |          44                                            3 33                                |
  0.00 +            4333                                             33 333                         +   0.00
       |               33333                                               33333                    |
       |                     333 33 3                                           333334 VORTEX       |
 -0.05 +                              33 3 3 3 3 3 3 3 33 3 3 3 33 3 333 33333333333344             +  -0.05
       |                                                                                            |
       |                                  POSITIVE PRESSURE PUSH UP                                 |
 -0.10 +                                                                                            +  -0.10
       -----+----------------+----------------+----------------+----------------+----------------+---
         -0.075            0.175            0.425     X      0.675            0.925            1.175


        VELOCITY X                   Surface  Contour Ploy of Velocity X by Y*X.

       ---+----------------+----------------+----------------+----------------+----------------+---
       |                                                                             LOW to HIGH  |
       |                                                                  Symbol     VELOCITY_X   |
     Y |              MAX VELOCITY                                                                |  Y
  0.10 +                                           HIGH VELOCITY          11111   -0.375 -  0.000 +  0.10
       |            55555555 555 5 55              DECELERATION           22222    0.000 -  0.375 |
       |   MAX  5555                  5 5 4 44                            33333    0.375 -  0.750 |
  0.05 +       44                              4 4 4 4                    44444    0.750 -  1.125 +  0.05
       | MIN   12                                      4 4 44             55555    1.125 -  1.500 |
       |        33                                            4 44                                |
  0.00 +          4444                                             44 44                          +  0.00
       |             44444                                                44444                   |
       | ACCELERATION      444 45 5                                           444333              |
 -0.05 +                            55 5 5 5 5 5 5 5 44 4 4 4 44 4 444 444444444444311 VORTEX     + -0.05
       |                                                                               SLOW       |
       |                              MAX VELOCITY                                   X VELOCITY   |
 -0.10 +                                                                                          + -0.10
       ---+----------------+----------------+----------------+----------------+----------------+---
       -0.075            0.175            0.425            0.675            0.925            1.175


        PRESSURE VS VELOCITY X

                              X VELOCITY
              0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50
               -+----+----+----+----+----+----+----+----+----+--
               |                                               |
               |THE LOWER THE PRESSURE THE HIGHER THE VELOCITY |
               |                                               |
          0.50 +                                               +  0.50
               |*    *                                         |
               |          *                                    |
               |               *                               |
          0.25 +                                               +  0.25
       P       |                    *                          |       P
       R       |                                               |       R
       E       |                                               |       E
       S  0.00 +                         *                     +  0.00 S
       S       |                              *                |       S
       U       | X VELOCITY COUNT  PRESSURE                    |       U
       R       |                                               |       R
       E -0.25 +   0.15       2    0.44768                     + -0.25 E
               |   0.30       8    0.43197         *           |
               |   0.45      17    0.37340                     |
               |   0.60      34    0.30160                     |
         -0.50 +   0.75      77    0.19823              *      + -0.50
               |   0.90     134   -0.01525                   * |
               |   1.05     136   -0.01480                     |
               |   1.20      46   -0.33330                     |
         -0.75 +   1.35      20   -0.47927                     + -0.75
               |   1.50       5   -0.59322                     |
               |                                               |
               -+----+----+----+----+----+----+----+----+----+--
              0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50
                               X VELOCITY


CONTENTS

1 Preparation
   Install wsl (microsoft linux)
   Install linux ubuntu
   Install linux SU2
   Install linux paraview
   Make sure you have windows media player for the animation

2  Download github config and mesh (this removes and recreates the simulation folder)
     NOTE: I have changed the .cfg file for more outputs
       1 inv_naca0012.cfg
       2 mesh_NACA0012_5deg_6814.su2 (I have made changes web version)
3  Set up linux enviroment variables
4  Run simulation
5  Paraview pressure
6  SLC Datasets and plots
                                                          SOURCE
      d:/wpswrkx/.history         convengence data             restart_flow.dat
      d:/wpswrkx/.restart_data    full pressure profile        restart_flow.csv
      d:/wpswrkx/.binMed          pressure vs velocity x       restart_flow.csv
      d:/wpswrkx/.surface_data    hydrofoil surface pressure   surface_flow.csv

7  ubuntu folder
   \\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow
      ORIGINAL INPUT
      inv_naca0012.cfg                1,745
      mesh_NACA0012_5deg_6814.su2   326,569

      CSV
      restart_flow.csv              432,487
      restart_flow.dat              142,545
      surface_flow.csv               27,512
      history.dat                       679  it is a csv

      su2_env.sh                        137  set environment variables like path

      hydrofoil_right_top.png        82,753

      surface_flow.vtu               12,316  use with paraview
      volume_flow.vtu               245,146

The linux su2 package like openradioss applies to many simulations.
Here are some examples
   Inviscid Hydrofoil
   Laminar Flat Plate with Heat Transfer
   Turbulent Flat Plate
   Turbulent NACA 0012
   Laminar Backward-facing Step
   Laminar Buoyancy-driven Cavity
   Streamwise Periodic Flow
   Species Transport
   Composition-Dependent model for Species Transport equations
   Unsteady von Karman vortex shedding
   Turbulent Bend with wall functions
   Wind velocity and pollutant dispersion in a city
   Structural Mechanics
   Multiphysics

CONDITIONS

Density (constant) = 998.2 kg/m^3
Inlet Velocity Magnitude = 1.775 m/s
Inlet Flow Direction, unit vector (x,y,z) = (1.0, 0.0, 0.0)
Outlet Pressure = 0.0 N/m^2



Related repos
https://github.com/rogerjdeangelis/altair-slc-running-ubuntu-linux-from-windows-using-ms-wsl
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-steel-ball-impact-plate-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-rubber-ring-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-scripted-bumper-beam-simulation-no-gui
https://github.com/rogerjdeangelis/altair-slc-openradioss-python-script-for-cell-phone-drop-simulation-no-gui
https://github.com/rogerjdeangelis/utl-altair-slc-enhanced-openradioss-tensile-strength-simulation-python-no-gui-no-mouse-surfing
https://github.com/rogerjdeangelis/utl-altair-slc-python-script-to-run-openradioss-tensile-strength-simulation
https://github.com/rogerjdeangelis/utl-altair-slc-post-processing-radioss-files-using-openradioss
https://github.com/rogerjdeangelis/utl-personal-altair-slc-with-matlab-sympy-and-r-finite-element-cold-plate-heat-transfer
/*                                        _   _
/ |  _ __  _ __ ___ _ __   __ _ _ __ __ _| |_(_) ___  _ __
| | | `_ \| `__/ _ \ `_ \ / _` | `__/ _` | __| |/ _ \| `_ \
| | | |_) | | |  __/ |_) | (_| | | | (_| | |_| | (_) | | | |
|_| | .__/|_|  \___| .__/ \__,_|_|  \__,_|\__|_|\___/|_| |_|
    |_|            |_|
*/
You need Linux(ubuntu) to call linux python for this solution.

This example simulates incompressible laminar flow through a 2D channel using the SU2 Python wrapper.
The geometry is simple: flow between two parallel plates.


WSL2 is not just useful but highly valuable for serious Python development on Windows 11.
It effectively solves the "Linux-first" problem that has historically plagued
Windows-based Python developers and data scientists. Much better that dual boot.
How to install wsl2

Install Linux(Ubuntu))
Open powershell or dos command in admin mode and type

wsl --install

Installing Linux(ubuntu) can take 20 minutes, but it is fully automatic.

You don't need to search for a separate installer for WSL 2; the easiest way is to install it
directly from the command line on your Windows machine.

Here is a simplified, step-by-step guide to get you started:

Step 1: Install WSL (linux) from the Command Line
-----------------------------------------

This is the quickest method for Windows 10 (version 2004 and later) and Windows 11.

1.  Open
    **PowerShell** or **Windows Command Prompt** as an **Administrator** (right-click the Start button
    and select "Windows Terminal (Admin)" or "PowerShell (Admin)").
2.  Type the following command
    and press **Enter**:
```bash
   wsl --install
```
3.  **Restart** your computer when
    prompted. This single command automatically enables all the necessary Windows features, installs
    the WSL 2 Linux kernel, and sets WSL 2 as your default version.

Step 2: Install Ubuntu (or Your Preferred Linux Distribution)
-------------------------------------------------------------

    After your computer restarts, the installation will continue automatically. A
    terminal window will open, and you'll be prompted to complete the setup of your Linux distribution.

1.  When the terminal opens, you'll be asked to **create a User Account** and **Password**
    for your new Linux installation. This username and password can be different from your Windows
    login.
2.  Once the process is finished, you will be automatically logged into your new Linux
    environment.

If the distribution doesn't launch automatically, you can find it by searching
 your **Windows Start Menu** for the name of the distribution you installed (e.g., "Ubuntu") .


Step 3: Verify Your Installation
--------------------------------

   To confirm everything is working correctly, open your
   installed Linux distribution (e.g., Ubuntu) from the Start Menu, or run `wsl` in PowerShell.


   You should see a command prompt for your new Linux system. You can then update the package list for
   your distribution with the following command:

   bash
   sudo apt update && sudo apt upgrade

   You'll need to enter the Linux user password you set up earlier to run `sudo`
   commands.

Step 4: I install SU2 to use with linux python
----------------------------------------------

  To use SU2 with the Python interface (`pysu2`) on Linux, you must build the software from source
  code. The pre-compiled binary packages do not include the Python wrapper .

  Here is a
  complete, step-by-step guide to getting it set up on your Linux system.

  -- PREREQUISITES

  First, you need to install the necessary tools for building the code and for the Python
  interface itself. Open a terminal and run the following commands:

 bash
  # Install
  essential build tools and SWIG (needed for the Python wrapper)
  sudo apt update
  sudo apt
  install -y build-essential swig

  # Install Python and the required packages
  sudo apt
  install -y python3-dev python3-pip
  pip install mpi4py numpy

  -- BUILD AND Install SU2 from Source

  Now that the prerequisites are installed, you can download the SU2
  source code, configure it to enable the Python wrapper, and compile it.

 1. DOWNLOAD THE SOURCE CODE

  bash
  # Clone the SU2 repository from GitHub
  git clone
  https://github.com/su2code/SU2.git
  cd SU2

 2. CONFIGURE THE BUILD

  This step uses `meson` to set up the build system. The critical part is the `-Denable-pywrapper=true`
  flag, which tells the build system to create the `pysu2` Python module.

  bash
  # Create a
  build directory and configure it.
  # Replace /path/to/install (e.g., $HOME/SU2_install) with your
  preferred installation location.
 ./meson.py build -Denable-pywrapper=true
  --prefix=$HOME/SU2_install

  > Note for advanced users: For parallel MPI support,
   you can also add the `-Dwith-mpi=enabled` flag . For example: `./meson.py build
  -Denable-pywrapper=true -Dwith-mpi=enabled --prefix=$HOME/SU2_install`.

 3. COMPILE AND INSTALL

   bash
   # Compile the code (this will take a few minutes)
   ninja -C build


   # Install SU2 to the location you set with --prefix
   ninja -C build install

  -- Configure Your Environment

  For your shell to find the newly installed SU2 executables and
  the Python module, you need to add a few lines to your `~/.bashrc` file.

  1.  Open your
  `~/.bashrc` file in a text editor (like `nano`).
  2.  Add the following lines to the end of
  the file. Make sure to use the same installation path (`--prefix`) you chose in the previous step.

 bash ( hardcoded paths and did not use these environment variables)
  # SU2 Environment Variables
  export SU2_HOME="$HOME/SU2"
  Path to the source code
  export SU2_RUN="$HOME/SU2_install/bin"          # Path to the compiled
  binaries
  export PATH="$SU2_RUN:$PATH"
  export PYTHONPATH="$SU2_RUN:$PYTHONPATH"

  Save the file and apply the changes to your current terminal session:
  bash
  source ~/.bashrc


  Verify the Installation

  You can now verify that everything is
  working correctly by importing `pysu2` in a Python script.

  Run the following command in your terminal:
  bash
  python3 -c "import pysu2; print('SU2 Python wrapper loaded successfully!')"

  If you see the success message without any errors, your installation is complete! You
  are now ready to use SU2's advanced features, such as running fluid-structure interaction
  simulations  or shape optimization  directly from Python.


Step 5: installing LINUX paraview (do not us e the latest, usu version 5.13.2)
------------------------------------------------------------------------------

   Go to
   https://www.paraview.org/download/
   choose: linux
   choose: version : v5.13
   choose: ParaView-5.13.2-MPI-Linux-Python3.11-x86_64.tar.gz

   next copy downloaded file to /home/xlr82sas
   open windows explorer
   right click and copy downloads/ParaView-5.13.2-MPI-Linux-Python3.10-x86_64.tar.gz

   Go to the penguin/linux foler (usually after network)
   Navigate to \linux\Ubuntu\home\xlr82sas
   Create folders Downloads applications temp
   paste downloads/ParaView-5.13.2-MPI-Linux-Python3.10-x86_64.tar.gz into \home\xlr82sas\Downloads

   Open windows command window and bring up linux
   type wsl
   C:\Windows\System32>wsl
   xlr82sas@SLC:/mnt/c/Windows/System32$ cd /home/xlr82sas/applications
   xlr82sas@SLC:$ pwd
   /home/xlr82sas/applications
   xlr82sas@SLC:~/applications$ tar -xzf ~/Downloads/ParaView-5.13.2-MPI-Linux-Python3.10-x86_64.tar.gz
   sudo ln -sf ~/applications/ParaView-5.13.2-MPI-Linux-Python3.10-x86_64/bin/paraview /usr/local/bin/paraview

Step 6: CREATE A TEMP DIRECTORY FOR LINUX LISTS AND LOGS AND PNGs
-----------------------------------------------------------------

   C:\Windows\System32>wsl
   xlr82sas@SLC:/mnt/c/Windows/System32$ cd /home/xlr82sas
   xlr82sas@SLC:/mnt/c/Windows/System32$ mkdir temp

   Create directory for final graphic

   d:/png

/*___        _                     _                 _    __ _ _
|___ \    __| | _____      ___ __ | | ___   __ _  __| |  / _(_) | ___  ___
  __) |  / _` |/ _ \ \ /\ / / `_ \| |/ _ \ / _` |/ _` | | |_| | |/ _ \/ __|
 / __/  | (_| | (_) \ V  V /| | | | | (_) | (_| | (_| | |  _| | |  __/\__ \
|_____|  \__,_|\___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_| |_| |_|_|\___||___/

inv_naca0012.cfg
mesh_NACA0012_5deg_6814.su2

You do not need to run this. You can manually download into linux directory
\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow

What powershell is doing ( you can do the following manually)

  1 deletes linux directory su2_channel_flow directory if it exists
  2 recreate empty su2_channel_flow
  3 copy files from github
    inv_naca0012.cfg               config  (I have made changes web version)
    mesh_NACA0012_5deg_6814.su2    mesh
*/

/*--- CLEAR WORKX DATA ---*/
libname workx sas7bdat "d:/wpswrkx";  /*--- PUT IN AUTOEXEC                                                      ---*/
                                      /*--- ALSO WPD DATASETS WORK MUCH BETTER WITH SAS PROCS THAT MODIFY TABLES ---*/
proc datasets lib=workx kill;
run;

/*--- START DOWNLOAD   ---*/
%slc_psbegin; /*--- call powershell ---*/
cards4;
# Deletes d:/rad and all subdirectories/files, recreates the folder, then

$targetDir = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow"

# 1. Remove the directory and everything inside it (forcefully, recursively)
if (Test-Path $targetDir) {
    Write-Host "Removing existing directory: $targetDir" -ForegroundColor Yellow
    Remove-Item -Path $targetDir -Recurse -Force
}

# 2. Recreate the empty directory
Write-Host "Creating fresh directory: $targetDir" -ForegroundColor Yellow
New-Item -Path $targetDir -ItemType Directory -Force | Out-Null

# 3. Define the source files (GitHub raw URLs) and their destination names
$files = @(
    @{
        Source = "https://raw.githubusercontent.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/inv_naca0012.cfg"
        Dest   = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\inv_naca0012.cfg"
    },
    @{
        Source = "https://raw.githubusercontent.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/mesh_NACA0012_5deg_6814.su2"
        Dest   = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\mesh_NACA0012_5deg_6814.su2"
    }
)

# 4. Download each file using Invoke-WebRequest
Write-Host "Downloading files to $targetDir ..." -ForegroundColor Yellow
foreach ($file in $files) {
    try {
        Write-Host "  Downloading: $($file.Source)" -ForegroundColor Cyan
        Invoke-WebRequest -Uri $file.Source -OutFile $file.Dest
        Write-Host "    Saved to: $($file.Dest)" -ForegroundColor Green
    }
    catch {
        Write-Host "    ERROR: Failed to download $($file.Source)" -ForegroundColor Red
        Write-Host "    Exception: $($_.Exception.Message)" -ForegroundColor Red
    }
}

# 5. Optional: List the contents of D:\rad to verify
Write-Host "`nContents of $targetDir :" -ForegroundColor Yellow
Get-ChildItem -Path $targetDir | Format-Table Name, Length -AutoSize

Write-Host "`nScript completed." -ForegroundColor Green
;;;;
%slc_psend;

/* _     _
| (_)___| |_
| | / __| __|
| | \__ \ |_
|_|_|___/\__|

*/

/**************************************************************************************************************************/
/*  Altair SLC                                                                                                            */
/* Removing existing directory: \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow                                              */
/* Creating fresh directory: \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow                                                 */
/* Downloading files to \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow ...                                                  */
/*   Downloading: https://raw.githubusercontent.com/rogerjdeangelis/                                                      */
/*        altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/inv_naca0012.cfg                      */
/*     Saved to: \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\inv_naca0012.cfg                                            */
/*   Downloading: https://raw.githubusercontent.com/rogerjdeangelis/                                                      */
/*        altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/mesh_NACA0012_5deg_6814.su2           */
/*     Saved to: \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\mesh_NACA0012_5deg_6814.su2                                 */
/*                                                                                                                        */
/* Contents of \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow :                                                             */
/*                                                                                                                        */
/* Name                        Length                                                                                     */
/* ----                        ------                                                                                     */
/* mesh_NACA0012_5deg_6814.su2 326569                                                                                     */
/* inv_naca0012.cfg              1745                                                                                     */
/*                                                                                                                        */
/* =======================================================================================================================*/
/*                                                                                                                        */
/* CONFIG                                                                                                                 */
/*                                                                                                                        */
/* \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\inv_naca0012.cfg                                                          */
/*                                                                                                                        */
/* % ------------- DIRECT, ADJOINT, AND LINEARIZED PROBLEM DEFINITION ------------%                                       */
/* SOLVER= INC_EULER                                                                                                      */
/* MATH_PROBLEM= DIRECT                                                                                                   */
/* KIND_TURB_MODEL= NONE                                                                                                  */
/* % -------------------- INCOMPRESSIBLE FREE-STREAM DEFINITION --------------------%                                     */
/* INC_DENSITY_INIT= 998.2                                                                                                */
/* INC_VELOCITY_INIT= ( 1.775, 0.0, 0.0 )                                                                                 */
/* % ---------------------- BOUNDARY CONDITION DEFINITION -------------------------%                                      */
/* MARKER_EULER= ( airfoil, lower_wall, upper_wall )                                                                      */
/* MARKER_INLET= ( inlet, 0.0, 1.775, 1.0, 0.0, 0.0 )                                                                     */
/* MARKER_OUTLET= ( outlet, 0.0 )                                                                                         */
/* INC_INLET_TYPE= VELOCITY_INLET                                                                                         */
/* INC_OUTLET_TYPE= PRESSURE_OUTLET                                                                                       */
/* % ---------------------- NUMERICAL METHOD DEFINITION ---------------------------%                                      */
/* CFL_NUMBER= 100.0                                                                                                      */
/* CFL_ADAPT= NO                                                                                                          */
/* RK_ALPHA_COEFF= ( 0.66667, 0.66667, 1.0 )                                                                              */
/* CONV_NUM_METHOD_FLOW= JST                                                                                              */
/* % MUSCL_FLOW is NOT used with JST scheme - removed or set to NO                                                        */
/* SLOPE_LIMITER_FLOW= VENKATAKRISHNAN                                                                                    */
/* VENKAT_LIMITER_COEFF= 0.05                                                                                             */
/* % ------------------------ LINEAR SOLVER DEFINITION ----------------------------%                                      */
/* LINEAR_SOLVER= FGMRES                                                                                                  */
/* LINEAR_SOLVER_PREC= ILU                                                                                                */
/* LINEAR_SOLVER_ERROR= 1E-6                                                                                              */
/* LINEAR_SOLVER_ITER= 10                                                                                                 */
/* % ------------------------ ITERATION AND CONVERGENCE PARAMETERS -----------------%                                     */
/* ITER= 500                                                                                                              */
/* CONV_RESIDUAL_MINVAL= 1e-8                                                                                             */
/* % ----------------------------- INPUT/OUTPUT -----------------------------------%                                      */
/* MESH_FILENAME= mesh_NACA0012_5deg_6814.su2                                                                             */
/* SOLUTION_FILENAME= solution_flow.dat                                                                                   */
/* RESTART_FILENAME= restart_flow.dat                                                                                     */
/* VOLUME_FILENAME= volume_flow                                                                                           */
/* SURFACE_FILENAME= surface_flow                                                                                         */
/* TABULAR_FORMAT= TECPLOT                                                                                                */
/* OUTPUT_WRT_FREQ= 100                                                                                                   */
/* OUTPUT_FILES= (RESTART, CSV, PARAVIEW, SURFACE_PARAVIEW, SURFACE_CSV)                                                  */
/* MARKER_PLOTTING= ( airfoil, lower_wall, upper_wall )                                                                   */
/* % What to write to the history file                                                                                    */
/* HISTORY_OUTPUT= ( ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y )                                                 */
/*                                                                                                                        */
/* =======================================================================================================================*/
/*                                                                                                                        */
/* MESH  10,691 records                                                                                                   */
/*                                                                                                                        */
/* \\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\mesh_NACA0012_5deg_6814.su2                                               */
/*                                                                                                                        */
/* 10,691 records ( the mesh )                                                                                            */
/*                                                                                                                        */
/* NDIME= 2                                                                                                               */
/* NELEM= 6814                                                                                                            */
/* 5      306      305      304      0                                                                                    */
/* 5      128      127      307      1                                                                                    */
/* 5      40        39      308      2                                                                                    */
/* 5      0        532        1      3                                                                                    */
/* 5      89        88      309      4                                                                                    */
/* ...                                                                                                                    */
/* 3      85      84                                                                                                      */
/* 3      86      85                                                                                                      */
/* 3      87      86                                                                                                      */
/* 3      88      87                                                                                                      */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/
1                                          Altair SLC           07:23 Sunday, June 21, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;

NOTE: AUTOEXEC processing completed

1
2         /*--- CLEAR WORKX DATA ---*/
3         libname workx sas7bdat "d:/wpswrkx";  /*--- PUT IN AUTOEXEC
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx


Altair SLC

The DATASETS Procedure

         Directory

Libref           WORKX
Engine           SAS7BDAT
Physical Name    d:\wpswrkx
4
5         proc datasets lib=workx kill;
NOTE: No matching members in directory
6         run;
7
8         /*--- START DOWNLOAD   ---*/
9         %slc_psbegin; /*--- call powershell ---*/
NOTE: Procedure datasets step took :
      real time : 0.285
      cpu time  : 0.062


10        cards4;

NOTE: The file 'c:\temp\ps_pgm.ps1' is:
      Filename='c:\temp\ps_pgm.ps1',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=12:57:26 Jun 18 2026,
      Last Accessed=07:23:45 Jun 21 2026,
      Last Modified=07:23:45 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 45 records were written to file 'c:\temp\ps_pgm.ps1'
      The minimum record length was 80
      The maximum record length was 170
NOTE: The data step took :
      real time : 0.015
      cpu time  : 0.000


11        # Deletes d:/rad and all subdirectories/files, recreates the folder, then
12
13        $targetDir = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow"
14
15        # 1. Remove the directory and everything inside it (forcefully, recursively)
16        if (Test-Path $targetDir) {
17            Write-Host "Removing existing directory: $targetDir" -ForegroundColor Yellow
18            Remove-Item -Path $targetDir -Recurse -Force
19        }
20
21        # 2. Recreate the empty directory
22        Write-Host "Creating fresh directory: $targetDir" -ForegroundColor Yellow
23        New-Item -Path $targetDir -ItemType Directory -Force | Out-Null
24
25        # 3. Define the source files (GitHub raw URLs) and their destination names
26        $files = @(
27            @{
28                Source = "https://raw.githubusercontent.com/rogerjdeangelis/
                   altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/inv_naca0012.cfg"
29                Dest   = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\inv_naca0012.cfg"
30            },
31            @{
32                Source = "https://raw.githubusercontent.com/rogerjdeangelis/
                  altair-slc-linux-python-su2-script-simulating-a-hydrofoil/refs/heads/main/mesh_NACA0012_5deg_6814.su2"
33                Dest   = "\\wsl$\Ubuntu\home\xlr82sas\su2_channel_flow\mesh_NACA0012_5deg_6814.su2"
34            }
35        )
36
37        # 4. Download each file using Invoke-WebRequest
38        Write-Host "Downloading files to $targetDir ..." -ForegroundColor Yellow
39        foreach ($file in $files) {
40            try {
41                Write-Host "  Downloading: $($file.Source)" -ForegroundColor Cyan
42                Invoke-WebRequest -Uri $file.Source -OutFile $file.Dest
43                Write-Host "    Saved to: $($file.Dest)" -ForegroundColor Green
44            }
45            catch {
46                Write-Host "    ERROR: Failed to download $($file.Source)" -ForegroundColor Red
47                Write-Host "    Exception: $($_.Exception.Message)" -ForegroundColor Red
48            }
49        }
50
51        # 5. Optional: List the contents of D:\rad to verify
52        Write-Host "`nContents of $targetDir :" -ForegroundColor Yellow
53        Get-ChildItem -Path $targetDir | Format-Table Name, Length -AutoSize
54
55        Write-Host "`nScript completed." -ForegroundColor Green
56        ;;;;
57        %slc_psend;

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32756, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 6.778
      cpu time  : 0.000



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32767, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 2.285
      cpu time  : 0.015



NOTE: The infile 'c:\temp\ps_pgm.log' is:
      Filename='c:\temp\ps_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=930,
      Create Time=13:54:03 Jun 18 2026,
      Last Accessed=07:23:54 Jun 21 2026,
      Last Modified=07:23:54 Jun 21 2026,
      Lrecl=32767, Recfm=V

Script completed.
NOTE: 18 records were read from file 'c:\temp\ps_pgm.log'
      The minimum record length was 0
      The maximum record length was 166
NOTE: 18 records were written to file PRINT

NOTE: The data step took :
      real time : 0.013
      cpu time  : 0.000


58
59
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 10.382
      cpu time  : 0.203

/*____   _ _                                   _                                      _
|___ /  | (_)_ __  _   ___  __  ___ _ ____   _(_)_ __ ___  _ __  _ __ ___   ___ _ __ | |_
  |_ \  | | | `_ \| | | \ \/ / / _ \ `_ \ \ / / | `__/ _ \| `_ \| `_ ` _ \ / _ \ `_ \| __|
 ___) | | | | | | | |_| |>  < |  __/ | | \ V /| | | | (_) | | | | | | | | |  __/ | | | |_
|____/  |_|_|_| |_|\__,_/_/\_\ \___|_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__|

*/

%slc_lxbegin;
cards4;
#!/bin/bash
# Create SU2 environment file using echo commands (variable not available yet)
echo 'export SU2_HOME="$HOME/SU2"' > ~/su2_channel_flow/su2_env.sh
echo 'export SU2_RUN="$HOME/SU2_install/bin"' >> ~/su2_channel_flow/su2_env.sh
echo 'export PATH="$SU2_RUN:$PATH"' >> ~/su2_channel_flow/su2_env.sh
echo 'export PYTHONPATH="$SU2_RUN:$PYTHONPATH"' >> ~/su2_channel_flow/su2_env.sh
chmod +x ~/su2_channel_flow/su2_env.sh
echo "SU2 environment file created at ~/su2_channel_flow/su2_env.sh"
;;;;
%slc_lxend;

/* _     _
| (_)___| |_
| | / __| __|
| | \__ \ |_
|_|_|___/\__|

*/

/**************************************************************************************************************************/
/* Altair SLC                                                                                                             */
/* SU2 environment file created at ~/su2_channel_flow/su2_env.sh                                                          */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC           07:32 Sunday, June 21, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"

NOTE: AUTOEXEC processing completed

1         %slc_lxbegin;
The file c:/temp/lx_pgm.sh does not exist
2         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh',
      File size (bytes)=0,
      Create Time=07:06:23 Jun 21 2026,
      Last Accessed=07:06:23 Jun 21 2026,
      Last Modified=07:32:29 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 8 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lx_pgm.sh'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 3.967
      cpu time  : 0.000


3         #!/bin/bash
4         # Create SU2 environment file using echo commands (variable not available yet)
5         echo 'export SU2_HOME="$HOME/SU2"' > ~/su2_channel_flow/su2_env.sh
6         echo 'export SU2_RUN="$HOME/SU2_install/bin"' >> ~/su2_channel_flow/su2_env.sh
7         echo 'export PATH="$SU2_RUN:$PATH"' >> ~/su2_channel_flow/su2_env.sh
8         echo 'export PYTHONPATH="$SU2_RUN:$PYTHONPATH"' >> ~/su2_channel_flow/su2_env.sh
9         chmod +x ~/su2_channel_flow/su2_env.sh
10        echo "SU2 environment file created at ~/su2_channel_flow/su2_env.sh"
11        ;;;;
12        %slc_lxend;

NOTE: The data step took :
      real time : 4.429
      cpu time  : 0.000



NOTE: The data step took :
      real time : 0.268
      cpu time  : 0.000



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32756, Recfm=V

SU2 environment file created at ~/su2_channel_flow/su2_env.sh
NOTE: 1 record was written to file PRINT

NOTE: 1 record was read from file rut
      The minimum record length was 61
      The maximum record length was 61
NOTE: The data step took :
      real time : 0.237
      cpu time  : 0.000



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -l -c /home/xlr82sas/temp/lx_pgm.sh,
      Lrecl=32767, Recfm=V

NOTE: The file 'c:\temp\lx_pgm.log' is:
      Filename='c:\temp\lx_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=13:46:11 Jun 19 2026,
      Last Accessed=07:32:34 Jun 21 2026,
      Last Modified=07:32:34 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 1 record was read from file rut
      The minimum record length was 61
      The maximum record length was 61
NOTE: 1 record was written to file 'c:\temp\lx_pgm.log'
      The minimum record length was 61
      The maximum record length was 61
NOTE: The data step took :
      real time : 0.238
      cpu time  : 0.015


ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 9.338
      cpu time  : 0.078

/*  _                            _                 _       _   _
| || |    _ __ _   _ _ __    ___(_)_ __ ___  _   _| | __ _| |_(_) ___  _ __
| || |_  | `__| | | | `_ \  / __| | `_ ` _ \| | | | |/ _` | __| |/ _ \| `_ \
|__   _| | |  | |_| | | | | \__ \ | | | | | | |_| | | (_| | |_| | (_) | | | |
   |_|   |_|   \__,_|_| |_| |___/_|_| |_| |_|\__,_|_|\__,_|\__|_|\___/|_| |_|

*/

%slc_lxbegin;
cards4;
source ~/su2_channel_flow/su2_env.sh
cd /home/xlr82sas//su2_channel_flow
SU2_CFD inv_naca0012.cfg
;;;;
%slc_lxend;

/* _     _
| (_)___| |_
| | / __| __|
| | \__ \ |_
|_|_|___/\__|

*/


/**************************************************************************************************************************/
/*                                                                                                                        */
/*  CONVERGENCE                                                                                                                      */
/*  KEY SECTION FROM LOG CONVERGENCE                                                                                      */
/*                                                                                                                        */
/*  Simulation Run using the Single-zone Driver                                                                           */
/*  +---------------------------------------------------+                                                                 */
/*  |                       LOG OF RESIDUALS            |                                                                 */
/*  |            +--------------------------------------|                                                                 */
/*  |  Inner_Iter|      rms[P]|      rms[U]|      rms[V]|                                                                 */
/*  +---------------------------------------------------+                                                                 */
/*  |           0|   -3.301254|   -3.364132|   -3.879701|                                                                 */
/*  |           1|   -3.508389|   -3.324175|   -3.294809|                                                                 */
/*  |           2|   -3.989942|   -3.591745|   -3.635668|                                                                 */
/*  |           3|   -4.205515|   -3.758902|   -3.870536|                                                                 */
/*  |           4|   -4.712933|   -3.832529|   -3.993027|                                                                 */
/*  |           5|   -4.800400|   -3.916502|   -4.172657|                                                                 */
/*  +---------------------------------------------------+                                                                 */
/*                                                                                                                        */
/*  ----------------------------- Solver Exit -------------------------------                                             */
/*  All convergence criteria satisfied.                                                                                   */
/*                                                                                                                        */
/*  CONVERT LOG OF RESIDUALS                                                                                            */
/*  NOTE rms(p) are the residuals for pressure in log base 10                                                             */
/*                                   Actual                                                                               */
/*   Inner_Iter|      rms[P]|    Residual(10**rms(p))                                                                     */
/*   ------------------------------------------------                                                                     */
/*            0|   -3.301254|       0.0004997422                                                                          */
/*            1|   -3.508389|       0.000310178                                                                           */
/*            2|   -3.989942|       0.000102343                                                                           */
/*            3|   -4.205515|       0.0000622996                                                                          */
/*            4|   -4.712933|       0.0000193672                                                                          */
/*            5|   -4.800400|       0.0000158343                                                                          */
/*                                                                                                                        */
/*========================================================================================================================*/======
/*                                                                                                                        */
/*  -------------------------------------------------------------------------                                             */
/*  |    ___ _   _ ___                                                      |                                             */
/*  |   / __| | | |_  )   Release 8.5.0 "Harrier"                           |                                             */
/*  |   \__ \ |_| |/ /                                                      |                                             */
/*  |   |___/\___//___|   Suite (Computational Fluid Dynamics Code)         |                                             */
/*  |                                                                       |                                             */
/*  -------------------------------------------------------------------------                                             */
/*  | SU2 Project Website: https://su2code.github.io                        |                                             */
/*  |                                                                       |                                             */
/*  | The SU2 Project is maintained by the SU2 Foundation                   |                                             */
/*  | (http://su2foundation.org)                                            |                                             */
/*  -------------------------------------------------------------------------                                             */
/*  | Copyright 2012-2026, SU2 Contributors                                 |                                             */
/*  |                                                                       |                                             */
/*  | SU2 is free software; you can redistribute it and/or                  |                                             */
/*  | modify it under the terms of the GNU Lesser General Public            |                                             */
/*  | License as published by the Free Software Foundation; either          |                                             */
/*  | version 2.1 of the License, or (at your option) any later version.    |                                             */
/*  |                                                                       |                                             */
/*  | SU2 is distributed in the hope that it will be useful,                |                                             */
/*  | but WITHOUT ANY WARRANTY; without even the implied warranty of        |                                             */
/*  | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU      |                                             */
/*  | Lesser General Public License for more details.                       |                                             */
/*  |                                                                       |                                             */
/*  | You should have received a copy of the GNU Lesser General Public      |                                             */
/*  | License along with SU2. If not, see <http://www.gnu.org/licenses/>.   |                                             */
/*  -------------------------------------------------------------------------                                             */
/*                                                                                                                        */
/*  Parsing config file for zone 0                                                                                        */
/*                                                                                                                        */
/*  ----------------- Physical Case Definition ( Zone 0 ) -------------------                                             */
/*  Incompressible Euler equations.                                                                                       */
/*  No restart solution, use the values at infinity (freestream).                                                         */
/*  Non-Dimensional simulation using intialization values.                                                                */
/*  The reference area is 1 m^2.                                                                                          */
/*  The semi-span will be computed using the max y(3D) value.                                                             */
/*  The reference length is 1 m.                                                                                          */
/*  Surface(s) plotted in the output file: airfoil, lower_wall, upper_wall.                                               */
/*  Input mesh file name: mesh_NACA0012_5deg_6814.su2                                                                     */
/*                                                                                                                        */
/*  --------------- Space Numerical Integration ( Zone 0 ) ------------------                                             */
/*  Jameson-Schmidt-Turkel scheme (2nd order in space) for the flow inviscid terms.                                       */
/*  JST viscous coefficients (2nd & 4th): 0.5, 0.02.                                                                      */
/*  The method includes a grid stretching correction (p = 0.3).                                                           */
/*  Gradient for upwind reconstruction: inverse-distance weighted Least-Squares.                                          */
/*  Gradient for viscous and source terms: inverse-distance weighted Least-Squares.                                       */
/*                                                                                                                        */
/*  --------------- Time Numerical Integration  ( Zone 0 ) ------------------                                             */
/*  Local time stepping (steady state simulation).                                                                        */
/*  Euler implicit method for the flow equations.                                                                         */
/*  FGMRES is used for solving the linear system.                                                                         */
/*  Using a ILU(0) preconditioning.                                                                                       */
/*  Convergence criteria of the linear solver: 1e-06.                                                                     */
/*  Max number of linear iterations: 10.                                                                                  */
/*  No CFL adaptation.                                                                                                    */
/*  Courant-Friedrichs-Lewy number:      100                                                                              */
/*                                                                                                                        */
/*  ------------------ Convergence Criteria  ( Zone 0 ) ---------------------                                             */
/*  Maximum number of solver subiterations: 500.                                                                          */
/*  Begin convergence monitoring at iteration 5.                                                                          */
/*  Residual minimum value: 1e1e-08.                                                                                      */
/*  Cauchy series min. value: 1e-10.                                                                                      */
/*  Number of Cauchy elements: 100.                                                                                       */
/*  Begin windowed time average at iteration 0.                                                                           */
/*                                                                                                                        */
/*  -------------------- Output Information ( Zone 0 ) ----------------------                                             */
/*  File writing frequency:                                                                                               */
/*  +------------------------------------+                                                                                */
/*  |                     File| Frequency|                                                                                */
/*  +------------------------------------+                                                                                */
/*  |                  RESTART|       100|                                                                                */
/*  |                      CSV|       100|                                                                                */
/*  |                 PARAVIEW|       100|                                                                                */
/*  |         SURFACE_PARAVIEW|       100|                                                                                */
/*  |              SURFACE_CSV|       100|                                                                                */
/*  +------------------------------------+                                                                                */
/*  Writing the convergence history file every 1 inner iterations.                                                        */
/*  Writing the screen convergence history every 1 inner iterations.                                                      */
/*  The tabular file format is Tecplot (.dat).                                                                            */
/*  Convergence history file name: history.                                                                               */
/*  Forces breakdown file name: forces_breakdown.dat.                                                                     */
/*  Surface file name: surface_flow.                                                                                      */
/*  Volume file name: volume_flow.                                                                                        */
/*  Restart file name: restart_flow.dat.                                                                                  */
/*                                                                                                                        */
/*  ------------- Config File Boundary Information ( Zone 0 ) ---------------                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |                        Marker Type|                        Marker Name|                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |                         Euler wall|                            airfoil|                                             */
/*  |                                   |                         lower_wall|                                             */
/*  |                                   |                         upper_wall|                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |                     Inlet boundary|                              inlet|                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |                    Outlet boundary|                             outlet|                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*                                                                                                                        */
/*  -------------------- Output Preprocessing ( Zone 0 ) --------------------                                             */
/*                                                                                                                        */
/*  WARNING: SURFACE_PRESSURE_DROP can only be computed for at least 2 surfaces (outlet, inlet, ...)                      */
/*                                                                                                                        */
/*  Screen output fields: INNER_ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y                                        */
/*  History output group(s): ITER, RMS_PRESSURE, RMS_VELOCITY-X, RMS_VELOCITY-Y                                           */
/*  Convergence field(s): RMS_PRESSURE                                                                                    */
/*  Warning: No (valid) fields chosen for time convergence monitoring. Time convergence monitoring inactive.              */
/*  Volume output fields: COORDINATES, SOLUTION, PRIMITIVE                                                                */
/*                                                                                                                        */
/*  ------------------- Geometry Preprocessing ( Zone 0 ) -------------------                                             */
/*  Two dimensional problem.                                                                                              */
/*  3559 grid points.                                                                                                     */
/*  6814 volume elements.                                                                                                 */
/*  5 surface markers.                                                                                                    */
/*  128 boundary elements in index 0 (Marker = airfoil).                                                                  */
/*  49 boundary elements in index 1 (Marker = lower_wall).                                                                */
/*  39 boundary elements in index 2 (Marker = inlet).                                                                     */
/*  39 boundary elements in index 3 (Marker = outlet).                                                                    */
/*  49 boundary elements in index 4 (Marker = upper_wall).                                                                */
/*  6814 triangles.                                                                                                       */
/*  Setting point connectivity.                                                                                           */
/*  Renumbering points (Reverse Cuthill McKee Ordering).                                                                  */
/*  Recomputing point connectivity.                                                                                       */
/*  Setting element connectivity.                                                                                         */
/*  Checking the numerical grid orientation.                                                                              */
/*  All volume elements are correctly oriented.                                                                           */
/*  All surface elements are correctly oriented.                                                                          */
/*  Identifying edges and vertices.                                                                                       */
/*  Setting the control volume structure.                                                                                 */
/*  Area of the computational grid: 239.918.                                                                              */
/*  Searching for the closest normal neighbors to the surfaces.                                                           */
/*  Storing a mapping from global to local point index.                                                                   */
/*  Compute the surface curvature.                                                                                        */
/*  Max K: 396.862. Mean K: 3.08971. Standard deviation K: 23.7043.                                                       */
/*  Computing mesh quality statistics for the dual control volumes.                                                       */
/*  +--------------------------------------------------------------+                                                      */
/*  |           Mesh Quality Metric|        Minimum|        Maximum|                                                      */
/*  +--------------------------------------------------------------+                                                      */
/*  |    Orthogonality Angle (deg.)|        65.2837|        89.4333|                                                      */
/*  |     CV Face Area Aspect Ratio|        1.00233|        6.02524|                                                      */
/*  |           CV Sub-Volume Ratio|              1|        4.00906|                                                      */
/*  +--------------------------------------------------------------+                                                      */
/*  Finding max control volume width.                                                                                     */
/*  Wetted area = 0 m.                                                                                                    */
/*  Area projection in the x-plane = 0 m, y-plane = 0 m.                                                                  */
/*  Max. coordinate in the x-direction = -1e+10 m, y-direction = -1e+10 m.                                                */
/*  Min. coordinate in the x-direction = 1e+10 m, y-direction = 1e+10 m.                                                  */
/*  Computing wall distances.                                                                                             */
/*                                                                                                                        */
/*  -------------------- Solver Preprocessing ( Zone 0 ) --------------------                                             */
/*  Incompressible flow: rho_ref, vel_ref, and temp_ref                                                                   */
/*  are based on the initial values, p_ref = rho_ref*vel_ref^2.                                                           */
/*  Force coefficients computed using initial values.                                                                     */
/*  The reference area for force coeffs. is 1 m^2.                                                                        */
/*  The reference length for force coeffs. is 1 m.                                                                        */
/*  The pressure is decomposed into thermodynamic and dynamic components.                                                 */
/*  The initial value of the dynamic pressure is 0.                                                                       */
/*  Mach number: 0.148821, computed using the Bulk modulus.                                                               */
/*  For external flows, the initial state is imposed at the far-field.                                                    */
/*  Angle of attack (deg): 0, computed using the initial velocity.                                                        */
/*  Side slip angle (deg): 0, computed using the initial velocity.                                                        */
/*  SI units only. The grid should be dimensional (meters).                                                               */
/*  No energy equation.                                                                                                   */
/*                                                                                                                        */
/*  -- Models:                                                                                                            */
/*  +------------------------------------------------------------------------------+                                      */
/*  |          Viscosity Model|        Conductivity Model|              Fluid Model|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  |                        -|                         -|         CONSTANT_DENSITY|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  -- Fluid properties:                                                                                                  */
/*  +------------------------------------------------------------------------------+                                      */
/*  |                  Name|    Dim. value|    Ref. value|      Unit|Non-dim. value|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  |          Bulk Modulus|        142000|             1|        Pa|        142000|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  -- Initial and free-stream conditions:                                                                                */
/*  +------------------------------------------------------------------------------+                                      */
/*  |                  Name|    Dim. value|    Ref. value|      Unit|Non-dim. value|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  |      Dynamic Pressure|             0|       3144.95|        Pa|             0|                                      */
/*  |        Total Pressure|       1572.48|       3144.95|        Pa|           0.5|                                      */
/*  |               Density|         998.2|         998.2|    kg/m^3|             1|                                      */
/*  |            Velocity-X|         1.775|         1.775|       m/s|             1|                                      */
/*  |            Velocity-Y|             0|         1.775|       m/s|             0|                                      */
/*  |    Velocity Magnitude|         1.775|         1.775|       m/s|             1|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  |           Mach Number|             -|             -|         -|      0.148821|                                      */
/*  +------------------------------------------------------------------------------+                                      */
/*  Initialize Jacobian structure (Euler). MG level: 0.                                                                   */
/*                                                                                                                        */
/*  ------------------- Numerics Preprocessing ( Zone 0 ) -------------------                                             */
/*                                                                                                                        */
/*  ----------------- Integration Preprocessing ( Zone 0 ) ------------------                                             */
/*                                                                                                                        */
/*  ------------------- Iteration Preprocessing ( Zone 0 ) ------------------                                             */
/*  Euler/Navier-Stokes/RANS fluid iteration.                                                                             */
/*                                                                                                                        */
/*  ------------------------------ Begin Solver -----------------------------                                             */
/*                                                                                                                        */
/*  Simulation Run using the Single-zone Driver                                                                           */
/*  +---------------------------------------------------+                                                                 */
/*  |  Inner_Iter|      rms[P]|      rms[U]|      rms[V]|                                                                 */
/*  +---------------------------------------------------+                                                                 */
/*  |           0|   -3.301254|   -3.364132|   -3.879701|                                                                 */
/*  |           1|   -3.508389|   -3.324175|   -3.294809|                                                                 */
/*  |           2|   -3.989942|   -3.591745|   -3.635668|                                                                 */
/*  |           3|   -4.205515|   -3.758902|   -3.870536|                                                                 */
/*  |           4|   -4.712933|   -3.832529|   -3.993027|                                                                 */
/*  |           5|   -4.800400|   -3.916502|   -4.172657|                                                                 */
/*                                                                                                                        */
/*  ----------------------------- Solver Exit -------------------------------                                             */
/*  All convergence criteria satisfied.                                                                                   */
/*  +-----------------------------------------------------------------------+                                             */
/*  |      Convergence Field     |     Value    |   Criterion  |  Converged |                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |                      rms[P]|       -4.8004|       < 1e-08|         Yes|                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  -------------------------------------------------------------------------                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |        File Writing Summary       |              Filename             |                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*  |SU2 binary restart                 |restart_flow.dat                   |                                             */
/*  |SU2 ASCII restart                  |restart_flow.csv                   |                                             */
/*  |Paraview                           |volume_flow.vtu                    |                                             */
/*  |Paraview surface                   |surface_flow.vtu                   |                                             */
/*  |CSV file                           |surface_flow.csv                   |                                             */
/*  +-----------------------------------------------------------------------+                                             */
/*                                                                                                                        */
/*  --------------------------- Finalizing Solver ---------------------------                                             */
/*  Deleted CNumerics container.                                                                                          */
/*  Deleted CIntegration container.                                                                                       */
/*  Deleted CSolver container.                                                                                            */
/*  Deleted CIteration container.                                                                                         */
/*  Deleted CInterface container.                                                                                         */
/*  Deleted CGeometry container.                                                                                          */
/*  Deleted CFreeFormDefBox class.                                                                                        */
/*  Deleted CSurfaceMovement class.                                                                                       */
/*  Deleted CVolumetricMovement class.                                                                                    */
/*  Deleted CConfig container.                                                                                            */
/*  Deleted nInst container.                                                                                              */
/*  Deleted COutput class.                                                                                                */
/*  -------------------------------------------------------------------------                                             */
/*                                                                                                                        */
/*  ------------------------- Exit Success (SU2_CFD) ------------------------                                             */
/**************************************************************************************************************************/

/*___                                _                 _               _            __       _ _
| ___|   _ __   __ _ _ __ __ ___   _(_) _____      __ | |__  _   _  __| |_ __ ___  / _| ___ (_) |
|___ \  | `_ \ / _` | `__/ _` \ \ / / |/ _ \ \ /\ / / | `_ \| | | |/ _` | `__/ _ \| |_ / _ \| | |
 ___) | | |_) | (_| | | | (_| |\ V /| |  __/\ V  V /  | | | | |_| | (_| | | | (_) |  _| (_) | | |
|____/  | .__/ \__,_|_|  \__,_| \_/ |_|\___| \_/\_/   |_| |_|\__, |\__,_|_|  \___/|_|  \___/|_|_|
        |_|                                                  |___/
*/

%slc_lxpvbegin;
cards4;
#!/usr/bin/env pvbatch
from paraview.simple import *
import os

# Disable automatic camera reset on first render
paraview.simple._DisableFirstRenderCameraReset()

# Load data file
file_path = "/home/xlr82sas/su2_channel_flow/volume_flow.vtu"
reader = XMLUnstructuredGridReader(FileName=[file_path])

# Create a single view (no layout needed)
renderView1 = CreateView('RenderView')
renderView1.ViewSize = [1920, 1080]
renderView1.Background = [1.0, 1.0, 1.0]

# Show data
data2 = Show(reader, renderView1)
data2.Representation = 'Surface'
ColorBy(data2, ('POINTS', 'Pressure'))
data2.RescaleTransferFunctionToDataRange(True, False)

# Show scalar bar
data2.SetScalarBarVisibility(renderView1, True)

# Configure scalar bar
pressureLUT = GetColorTransferFunction('Pressure')
scalarBar = GetScalarBar(pressureLUT, renderView1)
scalarBar.Orientation = 'Horizontal'
scalarBar.WindowLocation = 'Lower Center'
scalarBar.Position = [0.25, 0.03]
scalarBar.ScalarBarLength = 0.25
scalarBar.Title = 'Pressure'
scalarBar.ComponentTitle = ''
scalarBar.LabelFormat = '%.3g'

# Get camera and set zoom CORRECTLY
camera1 = renderView1.GetActiveCamera()

# 1. Set focal point FIRST (object center)
camera1.SetFocalPoint([0, 0, 0])

# 2. Set position (closer = more zoom)
camera1.SetPosition([0, 0, 8.0])  # Try 1.0, 0.5, etc. for more zoom

# 3. Optional: tighter field of view
camera1.SetViewAngle(20)  # Default ~45, smaller = more zoom

Render(view=renderView1)

# Save
output_dir = "/home/xlr82sas/su2_channel_flow"
right_file = os.path.join(output_dir, "hydrofoil_right_top.png")
SaveScreenshot(right_file, renderView1, ImageResolution=[1920, 1080])
print(f"Right view image saved to: {right_file}")
;;;;
%slc_lxpvend;

/*--- c . 1 all;c + 2 all;c o 3 all;c - 4 all; c # 5 all; ---*/


/********************************************************************************************************************************(*/
/*                                                                                                                                */
/* https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil/blob/main/hydrofoil_right_top.png */
/*                                                                                                                                */
/*                                SURFACE PRESSURE BY Y*X                                                                         */
/*                                SURFACE FLOW DATASET                                                                            */
/*                                                                                                                                */
/*     -0.075         0.175         0.425   X     0.675         0.925         1.175                                               */
/*       -+-------------+-------------+-------------+-------------+-------------+------                                           */
/*     Y | SURFACE PRESSURE BY Y*X  (1=LOWEST 5=HIGHEST)             LOW to HIGH      |  Y                                        */
/*       |                                                       Symbol    PRESSURE   |                                           */
/*  0.10 +                                                                            +  0.10                                     */
/*       |        222222222 222 2                                11111  -0150 - -0125 |                                           */
/*       |     322               2 22 11   LOWEST PRESSURE LIFT  22222  -0125 -  0100 |                                           */
/*  0.05 +    54                         11 1 1                  33333   0100 -  0125 +  0.05                                     */
/*       |    55  STAGNATION HIGH PRESSURE     1 11 1            44444   0125 -  0150 |                                           */
/*       |     44                                    11 1        55555   0150 -  0175 |                                           */
/*  0.00 +      4433                                     11111                        +  0.00                                     */
/*       |         33333                                      1112                    |                                           */
/*       |              33333 3                                   222222              |                                           */
/* -0.05 +                     33 3 33 33 33 3 33 22 222 222222222222 3 2 VORTEX      + -0.05                                     */
/*       |                                                           222              |                                           */
/*       |                        MODERATE PRESSURE PUSH UP                            |                                          */
/* -0.10 +                                                                            + -0.10                                     */
/*       |                                                                            |                                           */
/*       -+-------------+-------------+-------------+-------------+-------------+------                                           */
/*     -0.075         0.175         0.425   X     0.675         0.925         1.175                                               */
/**********************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC           15:07 Sunday, June 21, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx

NOTE: Library wpdx assigned as follows:
      Engine:        WPD
      Physical Name: d:\wpswrkx

NOTE: Library slchelp assigned as follows:
      Engine:        WPD
      Physical Name: C:\Progra~1\Altair\SLC\2026\sashelp


LOG:  15:07:28
NOTE: 1 record was written to file PRINT

NOTE: The data step took :
      real time : 0.015
      cpu time  : 0.015


NOTE: Format num2mis output
NOTE: Format $chr2mis output
NOTE: Procedure format step took :
      real time : 0.021
      cpu time  : 0.000


NOTE: AUTOEXEC processing completed

1         %slc_lxpvbegin;
The file c:/temp/lxpv_pgm.py does not exist
The file c:/temp/lxpv_pgm.log does not exist
2         cards4;

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py',
      File size (bytes)=0,
      Create Time=14:22:08 Jun 21 2026,
      Last Accessed=14:22:08 Jun 21 2026,
      Last Modified=15:07:29 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 55 records were written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.py'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 0.773
      cpu time  : 0.031


3         #!/usr/bin/env pvbatch
4         from paraview.simple import *
5         import os
6
7         # Disable automatic camera reset on first render
8         paraview.simple._DisableFirstRenderCameraReset()
9
10        # Load data file
11        file_path = "/home/xlr82sas/su2_channel_flow/volume_flow.vtu"
12        reader = XMLUnstructuredGridReader(FileName=[file_path])
13
14        # Create a single view (no layout needed)
15        renderView1 = CreateView('RenderView')
16        renderView1.ViewSize = [1920, 1080]
17        renderView1.Background = [1.0, 1.0, 1.0]
18
19        # Show data
20        data2 = Show(reader, renderView1)
21        data2.Representation = 'Surface'
22        ColorBy(data2, ('POINTS', 'Pressure'))
23        data2.RescaleTransferFunctionToDataRange(True, False)
24
25        # Show scalar bar
26        data2.SetScalarBarVisibility(renderView1, True)
27
28        # Configure scalar bar
29        pressureLUT = GetColorTransferFunction('Pressure')
30        scalarBar = GetScalarBar(pressureLUT, renderView1)
31        scalarBar.Orientation = 'Horizontal'
32        scalarBar.WindowLocation = 'Lower Center'
33        scalarBar.Position = [0.25, 0.03]
34        scalarBar.ScalarBarLength = 0.25
35        scalarBar.Title = 'Pressure'
36        scalarBar.ComponentTitle = ''
37        scalarBar.LabelFormat = '%.3g'
38
39        # Get camera and set zoom CORRECTLY
40        camera1 = renderView1.GetActiveCamera()
41
42        # 1. Set focal point FIRST (object center)
43        camera1.SetFocalPoint([0, 0, 0])
44
45        # 2. Set position (closer = more zoom)
46        camera1.SetPosition([0, 0, 8.0])  # Try 1.0, 0.5, etc. for more zoom
47
48        # 3. Optional: tighter field of view
49        camera1.SetViewAngle(20)  # Default ~45, smaller = more zoom
50
51        Render(view=renderView1)
52
53        # Save
54        output_dir = "/home/xlr82sas/su2_channel_flow"
55        right_file = os.path.join(output_dir, "hydrofoil_right_top.png")
56        SaveScreenshot(right_file, renderView1, ImageResolution=[1920, 1080])
57        print(f"Right view image saved to: {right_file}")
58        ;;;;
59        %slc_lxpvend;

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -c 'pvbatch /home/xlr82sas/temp/lxpv_pgm.py',
      Lrecl=32756, Recfm=V

Right view image saved to: /home/xlr82sas/su2_channel_flow/hydrofoil_right_top.png
NOTE: 1 record was written to file PRINT

NOTE: 1 record was read from file rut
      The minimum record length was 82
      The maximum record length was 82
NOTE: The data step took :
      real time : 15.161
      cpu time  : 0.000



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=wsl bash -c 'pvbatch /home/xlr82sas/temp/lxpv_pgm.py',
      Lrecl=32767, Recfm=V

NOTE: The file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log' is:
      Filename='\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log',
      File size (bytes)=0,
      Create Time=11:40:09 Jun 20 2026,
      Last Accessed=11:40:09 Jun 20 2026,
      Last Modified=15:07:44 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 1 record was read from file rut
      The minimum record length was 82
      The maximum record length was 82
NOTE: 1 record was written to file '\\wsl$\Ubuntu\home\xlr82sas\temp\lxpv_pgm.log'
      The minimum record length was 82
      The maximum record length was 82
NOTE: The data step took :
      real time : 6.231
      cpu time  : 0.000


ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 22.352
      cpu time  : 0.109

/*  _                        _             _           _       _                 _              _       _
| || |    ___ _ __ ___  __ _| |_ ___   ___| | ___   __| | __ _| |_ __ _ ___  ___| |_ ___  _ __ | | ___ | |_ ___
| || |_  / __| `__/ _ \/ _` | __/ _ \ / __| |/ __| / _` |/ _` | __/ _` / __|/ _ \ __/ __|| `_ \| |/ _ \| __/ __|
|__   _|| (__| | |  __/ (_| | ||  __/ \__ \ | (__ | (_| | (_| | || (_| \__ \  __/ |_\__ \| |_) | | (_) | |_\__ \
   |_|   \___|_|  \___|\__,_|\__\___| |___/_|\___| \__,_|\__,_|\__\__,_|___/\___|\__|___/| .__/|_|\___/ \__|___/
                                                                                         |_|
*>
/*--- CONVERGENCE AND REDIDUALS      ---*/

TIME_ITER:  Physical time step (unsteady simulation)
OUTER_ITER: Outer iteration count
INNER_ITER: Inner iteration count
RMS_P:      RMS residual of pressure
RMS_U:      RMS residual of X-velocity
RMS_V:      RMS residual of Y-velocity

---*/

data workx.history;
 infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\history.dat" delimiter=',' missover firstobs=3;
 input
    TIME_ITER
    OUTER_ITER
    INNER_ITER
    RMS_P
    RMS_U
    RMS_V empty  best32.;

    resid_p=10**RMS_P;
    resid_x=10**RMS_U;
    resid_y=10**RMS_V;
  * keep time_iter
         resid_p
         resid_x
         resid_y;
 drop empty;
run;

options ls=64 ps=32;
proc plot data=workx.history;
  plot inner_iter*resid_p / box;
run;quit;
options ls=255 ps=255;

/**************************************************************************************************************************/
/*  Convergence History                                                                                                   */
/*                                                                                                                        */
/*  Up to 40 obs from WORKX.HISTORY total obs=6 20JUN2026:15:12:24                                                        */
/*         TIME_                                                                                                          */
/*  Obs     ITER     RESID_P      RESID_X      RESID_Y                                                                    */
/*                                                                                                                        */
/*   1       0      .00049974    .00043238    .00013192                                                                   */
/*   2       0      .00031018    .00047405    .00050721                                                                   */
/*   3       0      .00010234    .00025601    .00023138                                                                   */
/*   4       0      .00006230    .00017422    .00013473                                                                   */
/*   5       0      .00001937    .00014705    .00010162                                                                   */
/*   6       0      .00001583    .00012120    .00006720                                                                   */
/**************************************************************************************************************************/



/*--- CREATE SLC TABLE RESTART DATA ---*/

data workx.restart_data;
 infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\restart_flow.csv" delimiter=',' missover firstobs=2;
 input
   POINTID
   X
   Y
   PRESSURE
   VELOCITY_X
   VELOCITY_Y empty best32.;
 drop empty;
run;


/*--- PRESSURE CONTOURS    ---*/

options ls=80 ps=32;
proc plot data=workx.restart_data;;
  plot y*x=pressure/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05 /*contour=5*/;
run;
options ls=255 ps=255;


/*---  VELOCITY_X CONTOURS ---*/

options ls=80 ps=32;
proc plot data=workx.restart_data;;
  plot y*x=velocity_x/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05 /*contour=5*/;
run;
options ls=255 ps=255;


/*--- PRESSURE VERSUS VELOCITY ---*/

data workx.x_median;
  set workx.restart_data(where=(velocity_x>0 and -.075<=x<=0.9 and -.1<=y<= .1));
  xbin=round(velocity_x,.15);
run;quit;

proc means data=workx.x_median;
  class xbin;
  var pressure;
  output out=workx.binMed median=presure_median;
run;

options ls=64 ps=32;
proc plot data=workx.binmed(where=(xbin >0));
  plot presure_median*xbin='*'/box;
run;
options ls=255 ps=255;

options ls=80 ps=32;
proc plot data=workx.restart_data;;
  plot pressure*velocity_x/box;
run;
options ls=255 ps=255;

/*--- SURFACE PLOTS ---*/

data workx.surface_data ;
 infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv" delimiter=',' missover firstobs=2;
 input
   POINTID
   X
   Y
   PRESSURE
   VELOCITY_X
   VELOCITY_Y empty best32.;
 drop empty;
run;


options ls=100 ps=28;
proc plot data=workx.surface_data;
  plot y*x=pressure/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05  contour=5 ;
run;
options ls=255 ps=255;


options ls=100 ps=28;
proc plot data=workx.surface_data;
  plot y*x=velocity_x/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05  contour=5 ;
run;
options ls=255 ps=255;



/**************************************************************************************************************************/
/*                                                                                                                        */
/*  WORKX.RESTART_DATA total obs=3,559                                                                                    */
/*                                                                                                                        */
/*  POINTID          X         Y        PRESSURE   VELOCITY X     VELOCITY Y                                              */
/*                                                                                                                        */
/*      0          -10    -6.00000    0.0046380     1.00034     0.000000000                                               */
/*      1          -10    -5.69231    0.0048337     1.00035     -.000030698                                               */
/*      2          -10    -5.38462    0.0048528     1.00038     0.000008725                                               */
/*      3          -10    -5.07692    0.0049029     1.00037     -.000004600                                               */
/*      4          -10    -4.76923    0.0047144     1.00038     -.000012473                                               */
/*      5          -10    -4.46154    0.0046818     1.00038     -.000000710                                               */
/*   ...                                                                                                                  */
/*   3555      1.02449    -0.030936     0.08397     0.82046        -0.09327                                               */
/*   3556     -0.00600     0.052230     0.07415     0.62346         0.65669                                               */
/*   3557     -0.00639     0.065627    -0.11425     0.89878         0.60105                                               */
/*   3558      1.00390    -0.052841     0.19228     0.95231        -0.11283                                               */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/*https://github.com/rogerjdeangelis/altair-slc-linux-python-su2-script-simulating-a-hydrofoil/blob/main/hydrofoil_right_top.png */
/*                                                                                                                        */
/*  PRESSURE                                                                                                              */
/*                               Contour plot of Y*X = Pressure                                                           */
/*                                                                                                                        */
/*       -0.075         0.175         0.425   Y     0.675         0.925         1.175                                     */
/*       ---+-------------+-------------+-------------+-------------+-------------+----------------------------           */
/*       |  3 332222222222 2 22  222 2    2 22  3 3     3 3 3 33     3 3                                      |           */
/*     Y |   333222222 2222   2222  2  2 2 2   2    3 3     3   3 3 3   3 3 3 3  3 3                          |  Y        */
/*  0.10 +  33332221111212222222 22  222  2  2  3 3  3 33 3  3 3   3 33                       LOW to HIGH     +  0.10     */
/*       |  33333211111112222 222 22   2 222  2  3  3 3    33   333 3 33 333  3 3 3    Symbol   PRESSURE      |           */
/*       |  33332111               2 22 22   2  2 33 3  333 333  333 3 333 33                                 |           */
/*  0.05 +  344431                         22 2 2   33 333 3333 3 3 333 333333 3 3     11111 -0.692 - -0.418  +  0.05     */
/*       |  444455                               2 33 3   3 33 33333333333333 33       22222 -0.418 - -0.144  |           */
/*       |  4444544                                    33 3  3333333333333333 3  33    33333 -0.144 -  0.130  |           */
/*  0.00 +  4444444433                                     3333333333333333333 3       44444  0.130 -  0.405  +  0.00     */
/*       |   4444444333333                                      33333333333333333 3    55555  0.405 -  0.679  |           */
/*       |  4 4444444333 333333 3                                   33334333333    3                          |           */
/* -0.05 +  44 4444433333333 3   33 3 33 33 33 3 33 33 333 33333333333334333333 33                            + -0.05     */
/*       |    444444333333333 333333  3 33  3    3  3 3 3 33 33333333333333333 3 3 3                          |           */
/*       |   44 444333333 333  3 3 3 3 3  3  33 3  3 3 3  3 3 333333333333333 33                              |           */
/* -0.10 +  4  4 43 33 3  3  3  3   33   3    3  33 3 3 3 33  3333333333333333 33                             + -0.10     */
/*       |    3 4  33  333 33  3 33    3  3 33  3    3 3 33 3 33 3 3 333333  3     3                          |           */
/*       ---+-------------+-------------+-------------+-------------+-------------+----------------------------           */
/*       -0.075         0.175         0.425    X    0.675         0.925         1.175                                     */
/*                                                                                                                        */
/*                                                                                                                        */
/*  VELOCITY_X                                                                                                            */
/*                              Contour plot of Y*X = VELOCITY X                                                          */
/*                                                                                                                        */
/*       -0.075         0.175         0.425    Y    0.675         0.925         1.175                                     */
/*      +---+-------------+-------------+-------------+-------------+-------------+----------------------------           */
/*    Y |   4 444555555555 5 55  555 4    4 44  4 4     4 4 4 44     4 4                                      |           */
/*      |    444455555 5555   5555  4  4 4 4   4    4 4     4   4 4 4   4 4 4 4  4 4                          |  Y        */
/* 0.10 +   44444555555555555555 55  444  4  4  4 4  4 44 4  4 4   4 44                                       +  0.10     */
/*      |   44444555555555555 555 55   4 444  4  4  4 4    44   444 4 44 444  4 4 4              LOW to HIGH  |           */
/*      |   44444555               5 54 44   4  4 44 4  444 444  444 4 444 44         Symbol     VELOCITY_X   |           */
/* 0.05 +   444334                         44 4 4   44 444 4444 4 4 444 444444 4 4                            +  0.05     */
/*      |   443312                               4 44 4   4 44 44444444444444 44      11111  -0.375 -  0.000  |           */
/*      |   4433333                                    44 4  4444444444444444 4  44   22222   0.000 -  0.375  |           */
/* 0.00 +   4433334444                                     4444444444444444444 4      33333   0.375 -  0.750  +  0.00     */
/*      |    4333344444444                                      44444444444444444 4   44444   0.750 -  1.125  |           */
/*      |   4 4444444444 444445 5  HIGHEST VELOCITY                 44333444444    4  55555   1.125 -  1.500  |           */
/* 0.05 +   44 4444444444444 4   55 5 55 55 55 4 44 44 444 44444444444443144444 44                            + -0.05     */
/*      |     444444444444444 444444  4 44  4    4  4 4 4 44 44444444444444444 4 4 4                          |           */
/*      |    44 444444444 444  4 4 4 4 4  4  44 4  4 4 4  4 4 444444444444444 44                              |           */
/* 0.10 +   4  4 44 44 4  4  4  4   44   4    4  44 4 4 4 44  4444444444444444 44                             + -0.10     */
/*      |     4 4  44  444 44  4 44    4  4 44  4    4 4 44 4 44 4 4 444444  4     4                          |           */
/*      +---+-------------+-------------+-------------+-------------+-------------+----------------------------           */
/*       -0.075         0.175         0.425     X   0.675         0.925         1.175                                     */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/*                         Plot of PRESURE_MEDIAN*X_VELOCITY                                                              */
/*                                                                                                                        */
/*                               X VELOCITY                                                                               */
/*               0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50                                                        */
/*                -+----+----+----+----+----+----+----+----+----+--                                                       */
/*                |                                               |                                                       */
/*                |THE LOWER THE PRESSURE THE HIGHER THE VELOCITY |                                                       */
/*                |                                               |                                                       */
/*           0.50 +                                               +  0.50                                                 */
/*                |*    *                                         |                                                       */
/*                |          *                                    |                                                       */
/*                |               *                               |                                                       */
/*           0.25 +                                               +  0.25                                                 */
/*        P       |                    *                          |       P                                               */
/*        R       |                                               |       R                                               */
/*        E       |                                               |       E                                               */
/*        S  0.00 +                         *                     +  0.00 S                                               */
/*        S       |                              *                |       S                                               */
/*        U       | X VELOCITY COUNT  PRESSURE                    |       U                                               */
/*        R       |                                               |       R                                               */
/*        E -0.25 +   0.15       2    0.44768                     + -0.25 E                                               */
/*                |   0.30       8    0.43197         *           |                                                       */
/*                |   0.45      17    0.37340                     |                                                       */
/*                |   0.60      34    0.30160                     |                                                       */
/*          -0.50 +   0.75      77    0.19823              *      + -0.50                                                 */
/*                |   0.90     134   -0.01525                   * |                                                       */
/*                |   1.05     136   -0.01480                     |                                                       */
/*                |   1.20      46   -0.33330                     |                                                       */
/*          -0.75 +   1.35      20   -0.47927                     + -0.75                                                 */
/*                |   1.50       5   -0.59322                     |                                                       */
/*                |                                               |                                                       */
/*                -+----+----+----+----+----+----+----+----+----+--                                                       */
/*               0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50                                                        */
/*                                X VELOCITY                                                                              */
/*                                                                                                                        */
/*========================================================================================================================*/
/*                                                                                                                        */
/*  WORKX.SURFACE_DATA total obs=228 20JUN2026:15:24:13                                                                   */
/*                                                                                                                        */
/*  Obs    POINTID           X            Y     PRESSURE    VELOCITY_X    VELOCITY_Y                                      */
/*                                                                                                                        */
/*    1        0      -10.0000           -6     0.004638     1.00034            0                                         */
/*    2       39      -10.0000            6    -0.000506     1.00019            0                                         */
/*    3       40       -9.5918            6    -0.000576     1.00024            0                                         */
/*    4       41       -9.1837            6    -0.000618     1.00027            0                                         */
/*    5       42       -8.7755            6    -0.000622     1.00036            0                                         */
/*  ...                                                                                                                   */
/*  224      299       0.98179    -0.045655      0.12143     0.93391      0.04601                                         */
/*  225      300       0.98832    -0.045331      0.13861     0.90628      0.04589                                         */
/*  226      301       0.99319    -0.045078      0.20096     0.88193      0.04527                                         */
/*  227      302       0.99811    -0.044829      0.17227     0.77513      0.03439                                         */
/*  228      303       1.00306    -0.044640      0.67880     0.65707      0.02503                                         */
/*                                                                                                                        */
/* c . 1 all;c + 2 all;c X 3 all;c - W  4 all; c # 5 all;                                                                 */
/*                                                                                                                        */
/* =======================================================================================================================*/
/*                                                                                                                        */
/*                                      Surface Contour plot of Pressure by Y*X.                                          */
/*          -0.075            0.175            0.425     X      0.675            0.925            1.175                   */
/*        -----+----------------+----------------+----------------+----------------+----------------+---                  */
/*        |                                                                         LOW to HIGH        |                  */
/*        |    SURFACE PRESSURE BY Y*X                                    Symbol     PRESSURE          |                  */
/*        |                                                                                            |                  */
/*        |                                                               11111  -0.692 - -0.418       |                  */
/*      Y |       LOWEST PRESSURE                                         22222  -0.418 - -0.144       |      Y           */
/*   0.10 +                                  LOW PRESSURE LIFT            33333  -0.144 -  0.130       +   0.10           */
/*        |              11111122 222 2 22                                44444   0.130 -  0.405       |                  */
/*        |          1111                  2 2 2 22                       55555   0.405 -  0.679       |                  */
/*   0.05 +    MAX  11                              2 2 2 2                                            +   0.05           */
/*        |PRESSURE 55                                      2 3 33                                     |                  */
/*        |          44                                            3 33                                |                  */
/*   0.00 +            4333                                             33 333                         +   0.00           */
/*        |               33333                                               33333                    |                  */
/*        |                     333 33 3                                           333334 VORTEX       |                  */
/*  -0.05 +                              33 3 3 3 3 3 3 3 33 3 3 3 33 3 333 33333333333344             +  -0.05           */
/*        |                                  POSITIVE PRESSURE PUSH UP                                 |                  */
/*        |                                                                                            |                  */
/*  -0.10 +                                                                                            +  -0.10           */
/*        -----+----------------+----------------+----------------+----------------+----------------+---                  */
/*          -0.075            0.175            0.425     X      0.675            0.925            1.175                   */
/*                                                                                                                        */
/*                                                                                                                        */
/*                                                                                                                        */
/*                                     Surface Contour Plot of Velocity X by Y*X.                                         */
/*                                                                                                                        */
/*        -0.075            0.175            0.425     X      0.675            0.925            1.175                     */
/*        ---+----------------+----------------+----------------+----------------+----------------+---                    */
/*        |                                                                             LOW to HIGH   |                   */
/*        |                                                                  Symbol     VELOCITY_X   |                    */
/*      Y |              MAX VELOCITY                                                                |  Y                 */
/*   0.10 +                                           HIGH VELOCITY          11111   -0.375 -  0.000 +  0.10              */
/*        |            55555555 555 5 55              DECELERATION           22222    0.000 -  0.375 |                    */
/*        |   MAX  5555                  5 5 4 44                            33333    0.375 -  0.750 |                    */
/*   0.05 +       44                              4 4 4 4                    44444    0.750 -  1.125 +  0.05              */
/*        | MIN   12                                      4 4 44             55555    1.125 -  1.500 |                    */
/*        |        33                                            4 44                                |                    */
/*   0.00 +          4444                                             44 44                          +  0.00              */
/*        |             44444                                                44444                   |                    */
/*        | ACCELERATION      444 45 5                                           444333              |                    */
/*  -0.05 +                            55 5 5 5 5 5 5 5 44 4 4 4 44 4 444 444444444444311 VORTEX     + -0.05              */
/*        |                                                                               SLOW       |                    */
/*        |                              MAX VELOCITY                                   X VELOCITY   |                    */
/*  -0.10 +                                                                                          + -0.10              */
/*        ---+----------------+----------------+----------------+----------------+----------------+---                    */
/*        -0.075            0.175            0.425     X      0.675            0.925            1.175                     */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC           17:27 Sunday, June 21, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"

NOTE: AUTOEXEC processing completed

1          /*--- CREATE SLC TABLE RESTART DATA ---*/
2
3         data workx.restart_data;
4          infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\restart_flow.csv" delimiter=',' missover firstobs=2;
5          input
6            POINTID
7            X
8            Y
9            PRESSURE
10           VELOCITY_X
11           VELOCITY_Y empty best32.;
12         drop empty;
13        run;

NOTE: The infile '\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\restart_flow.csv' is:
      Filename='\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\restart_flow.csv',
      File size (bytes)=432487,
      Create Time=08:15:02 Jun 21 2026,
      Last Accessed=15:42:27 Jun 21 2026,
      Last Modified=08:15:02 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 3559 records were read from file '\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\restart_flow.csv'
      The minimum record length was 117
      The maximum record length was 122
NOTE: Data set "WORKX.restart_data" has 3559 observation(s) and 6 variable(s)
NOTE: The data step took :
      real time : 5.035
      cpu time  : 0.062


14
15
16        /*--- PRESSURE CONTOURS    ---*/
17
18        options ls=80 ps=32;
19        proc plot data=workx.restart_data;;
20          plot y*x=pressure/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by
20      ! .05 /*contour=5*/;
21        run;
NOTE: 2763 observation(s) outside the axis range for the Plot of Y*X. Symbol is
      value of PRESSURE. request
NOTE: Procedure plot step took :
      real time : 0.022
      cpu time  : 0.000


22        options ls=255 ps=255;
23
24
25        /*---  VELOCITY_X CONTOURS ---*/
26
27        options ls=80 ps=32;
28        proc plot data=workx.restart_data;;
29          plot y*x=velocity_x/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 b
29      ! y .05 /*contour=5*/;
30        run;
NOTE: 2763 observation(s) outside the axis range for the Plot of Y*X. Symbol is
      value of VELOCITY_X. request
NOTE: Procedure plot step took :
      real time : 0.005
      cpu time  : 0.000


31        options ls=255 ps=255;
32
33
34        /*--- PRESSURE VERSUS VELOCITY ---*/
35
36        data workx.x_median;
37          set workx.restart_data(where=(velocity_x>0 and -.075<=x<=0.9 and -.1<=y<= .1));
38          xbin=round(velocity_x,.15);
39        run;

NOTE: 480 observations were read from "WORKX.restart_data"
NOTE: Data set "WORKX.x_median" has 480 observation(s) and 7 variable(s)
NOTE: The data step took :
      real time : 0.026
      cpu time  : 0.015


39      !     quit;
40
41        proc means data=workx.x_median;
42          class xbin;
43          var pressure;
44          output out=workx.binMed median=presure_median;
45        run;
NOTE: 480 observations were read from "WORKX.x_median"
NOTE: Data set "WORKX.binMed" has 12 observation(s) and 4 variable(s)
NOTE: Procedure means step took :
      real time : 0.050
      cpu time  : 0.046


46
47        options ls=64 ps=32;
48        proc plot data=workx.binmed(where=(xbin >0));
49          plot presure_median*xbin='*'/box;
50        run;
NOTE: Procedure plot step took :
      real time : 0.025
      cpu time  : 0.031


51        options ls=255 ps=255;
52
53        options ls=80 ps=32;
54        proc plot data=workx.restart_data;;
55          plot pressure*velocity_x/box;
56        run;
NOTE: Procedure plot step took :
      real time : 0.020
      cpu time  : 0.000


57        options ls=255 ps=255;
58
59        /*--- SURFACE PLOTS ---*/
60
61        data workx.surface_data ;
62         infile "\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv" delimiter=',' missover firstobs=2;
63         input
64           POINTID
65           X
66           Y
67           PRESSURE
68           VELOCITY_X
69           VELOCITY_Y empty best32.;
70         drop empty;
71        run;

NOTE: The infile '\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv' is:
      Filename='\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv',
      File size (bytes)=27512,
      Create Time=08:15:02 Jun 21 2026,
      Last Accessed=16:34:13 Jun 21 2026,
      Last Modified=08:15:02 Jun 21 2026,
      Lrecl=32767, Recfm=V

NOTE: 228 records were read from file '\\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow\surface_flow.csv'
      The minimum record length was 117
      The maximum record length was 122
NOTE: Data set "WORKX.surface_data" has 228 observation(s) and 6 variable(s)
NOTE: The data step took :
      real time : 0.040
      cpu time  : 0.015


72
73
74        options ls=100 ps=28;
75        proc plot data=workx.surface_data;
76          plot y*x=pressure/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05  contour=5 ;
                                                                                     ^
ERROR: Option "contour" is not known for the PLOT statement
NOTE: Step processing stopped because of errors detected
77        run;
NOTE: Procedure plot step took :
      real time : 0.008
      cpu time  : 0.000


78        options ls=255 ps=255;
79
80
81        options ls=100 ps=28;
82        proc plot data=workx.surface_data;
83          plot y*x=velocity_x/box haxis=-.075 to 1.25 by .25 vaxis=-.1 to .1 by .05  contour=5 ;
                                                                                       ^
ERROR: Option "contour" is not known for the PLOT statement
NOTE: Step processing stopped because of errors detected
84        run;
NOTE: Procedure plot step took :
      real time : 0.000
      cpu time  : 0.000


85        options ls=255 ps=255;
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 5.332
      cpu time  : 0.250

/*____               _                 _            __       _     _
|___  |  _   _ _ __ | |__  _   _ _ __ | |_ _   _   / _| ___ | | __| | ___ _ __
   / /  | | | | `_ \| `_ \| | | | `_ \| __| | | | | |_ / _ \| |/ _` |/ _ \ `__|
  / /   | |_| | | | | |_) | |_| | | | | |_| |_| | |  _| (_) | | (_| |  __/ |
 /_/     \__,_|_| |_|_.__/ \__,_|_| |_|\__|\__,_| |_|  \___/|_|\__,_|\___|_|

*/

 \\wsl.localhost\Ubuntu\home\xlr82sas\su2_channel_flow

    ORIGINAL INPUT                  Bytes
    inv_naca0012.cfg                1,745
    mesh_NACA0012_5deg_6814.su2   326,569

    CSVx
    restart_flow.csv              432,487
    restart_flow.dat              142,545
    surface_flow.csv               27,512
    history.dat                       679  it is a csv

    SHELL SCRIPT
    su2_env.sh                        137  set environment variables like path (bash script)

    PRESSURE CONTOURS
    hydrofoil_right_top.png        82,753

    surface_flow.vtu               12,316  use with paraview
    volume_flow.vtu               245,146
/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

