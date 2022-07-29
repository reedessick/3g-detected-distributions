# 3G Detected Distributions

A small repository showing how to generate detected distributions of gravitational wave events with third generation (3G) interferometers.

## installation

Installation of dependencies and construction of an appropriate environment is mostly left to the user.
However, `gw-detectors` and `gw-distributions` can be cloned and installed via

```
./install
```

### dependencies

  * [monte-carlo-vt](https://git.ligo.org/reed.essick/monte-carlo-vt)
  * [gw-distributions](https://git.ligo.org/reed.essick/gw-distributions)
  * [gw-detectors](https://git.ligo.org/reed.essick/gw-detectors)
  * [lalsuite](https://wiki.ligo.org/Computing/LALSuiteInstall)

## quick-start guide

Once the code is installed, you should be able to draw samples from the astrophysical and detected distributions corresponding to the networks (`*-network.ini`) and populations (`*-*-population.ini`) specified within the repo via

```
./sample
```

This will generate 1000 samples from each distribution and should take approximately 100 min in total to complete (dominated by sampling from hlv-detected-population).
It will produce 4 files with identical formats:

  * `hlv-astrophysical-population.hdf5`
  * `hlv-detected-population.hdf5`
  * `ce-astrophysical-population.hdf5`
  * `ce-detected-population.hdf5`

The properties of the events are stored as a structured array within the single dataset (named `events`) in each HDF file.

```
$ h5ls -v hlv-astrophysical-population.hdf5
Opened "hlv-astrophysical-population.hdf5" with sec2 driver.
events                   Dataset {100/100}
    Location:  1:1272
    Links:     1
    Storage:   44200 logical bytes, 44200 allocated bytes, 100.00% utilization
    Type:      struct {
                   "snr_H_aligo-design" +0    native double
                   "snr_flow"         +8    native double
                   "lnpdraw_polarization" +16   native double
                   "observed_snr_L_aligo-design" +24   native double
                   "mass2_source"     +32   native double
                   "waveform_fhigh"   +40   native double
                   "snr_V_advirgo-design" +48   native double
                   "coa_phase"        +56   native double
                   "right_ascension"  +64   native double
                   "spin2y"           +72   native double
                   "eccentricity"     +80   native double
                   "polarization"     +88   native double
                   "observed_snr_V_advirgo-design" +96   native double
                   "mass2_detector"   +104  native double
                   "snr_L_aligo-design" +112  native double
                   "spin1y"           +120  native double
                   "lnpdraw_declination" +128  native double
                   "time_geocenter"   +136  native double
                   "lnpdraw_right_ascension" +144  native double
                   "luminosity_distance" +152  native double
                   "fref"             +160  native double
                   "lnpdraw_time_geocenter" +168  native double
                   "lnpdraw_spin1x_spin1y_spin1z_spin2x_spin2y_spin2z" +176  native double
                   "lnpdraw_z"        +184  native double
                   "spin1z"           +192  native double
                   "lnpdraw_mass1_source" +200  native double
                   "mass1_source"     +208  native double
                   "observed_phase_maximized_snr_net" +216  native double
                   "spin1x"           +224  native double
                   "waveform_flow"    +232  native double
                   "lnpdraw_mass2_source_GIVEN_mass1_source" +240  native double
                   "dluminosity_distance_dredshift" +248  native double
                   "approximant"      +256  50-byte null-padded ASCII string
                   "inclination"      +306  native double
                   "observed_phase_maximized_snr_H_aligo-design" +314  native double
                   "lnpdraw_inclination" +322  native double
                   "lnpdraw_eccentricity" +330  native double
                   "mass1_detector"   +338  native double
                   "snr_net"          +346  native double
                   "observed_phase_maximized_snr_L_aligo-design" +354  native double
                   "delta_abscissa"   +362  native double
                   "spin2z"           +370  native double
                   "observed_snr_H_aligo-design" +378  native double
                   "spin2x"           +386  native double
                   "declination"      +394  native double
                   "snr_fhigh"        +402  native double
                   "lnpdraw_coa_phase" +410  native double
                   "z"                +418  native double
                   "observed_snr_net" +426  native double
                   "observed_phase_maximized_snr_V_advirgo-design" +434  native double
               } 442 bytes
```

The script will also produce several summary plots for each distribution.

## authors

  * Reed Essick (reed.essick@gmail.com)
