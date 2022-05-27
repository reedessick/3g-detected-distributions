# 3G Detected Distributions

A small repository showing how to generate detected distributions of gravitational wave events with third generation (3G) interferometers.

## installation

Installation of dependencies and construction of an appropriate environment is mostly left to the user.
However, `gw-detectors` and `gw-distributions` can be cloned and installed via

```
./install
```

### dependencies

  * [gw-distributions](https://git.ligo.org/reed.essick/gw-distributions)
  * [gw-detectors](https://git.ligo.org/reed.essick/gw-detectors)
  * [lalsuite](https://wiki.ligo.org/Computing/LALSuiteInstall)

## quick-start guide

Once the code is installed, you should be able to draw samples from the detected distribution corresponding to the network (`detector-network.ini`) and population (`astrophyiscal-population.ini`) specified within the repo via

```
./sample detector-network.ini astrophysical-population.ini -v --num-samples 1000
```

This should take O(XXX) sec to complete and will produce 2 files with identical formats.

  * `sample-draw.hdf5`
  * `sample-detected.hdf5`

The properties of the events are stored as a structured array within the single dataset (named `events`) in each HDF file.

```
$ h5ls -v sample-draw.hdf5 
Opened "sample-draw.hdf5" with sec2 driver.
events                   Dataset {1000/1000}
    Location:  1:1056
    Links:     1
    Storage:   418000 logical bytes, 418000 allocated bytes, 100.00% utilization
    Type:      struct {
                   "observed_phase_maximized_snr_L_aplus-design" +0    native double
                   "spin2y"           +8    native double
                   "lnpdraw_coa_phase" +16   native double
                   "lnpdraw_inclination" +24   native double
                   "luminosity_distance" +32   native double
                   "polarization"     +40   native double
                   "coa_phase"        +48   native double
                   "observed_phase_maximized_snr_net" +56   native double
                   "lnpdraw_mass1_source_mass2_source" +64   native double
                   "observed_phase_maximized_snr_V_advirgo-design" +72   native double
                   "snr_H_aplus-design" +80   native double
                   "snr_CE@H_ce-design" +88   native double
                   "observed_snr_CE@H_ce-design" +96   native double
                   "observed_phase_maximized_snr_H_aplus-design" +104  native double
                   "z"                +112  native double
                   "lnpdraw_eccentricity" +120  native double
                   "time_geocenter"   +128  native double
                   "lnpdraw_declination" +136  native double
                   "eccentricity"     +144  native double
                   "mass2_source"     +152  native double
                   "observed_snr_L_aplus-design" +160  native double
                   "observed_snr_net" +168  native double
                   "snr_net"          +176  native double
                   "mass1_source"     +184  native double
                   "lnpdraw_time_geocenter" +192  native double
                   "lnpdraw_z"        +200  native double
                   "spin1z"           +208  native double
                   "right_ascension"  +216  native double
                   "spin2z"           +224  native double
                   "fref"             +232  native double
                   "spin1y"           +240  native double
                   "observed_snr_H_aplus-design" +248  native double
                   "approximant"      +256  50-byte null-padded ASCII string
                   "spin2x"           +306  native double
                   "observed_snr_V_advirgo-design" +314  native double
                   "lnpdraw_spin1x_spin1y_spin1z_spin2x_spin2y_spin2z" +322  native double
                   "mass2_detector"   +330  native double
                   "declination"      +338  native double
                   "lnpdraw_polarization" +346  native double
                   "lnpdraw_right_ascension" +354  native double
                   "snr_L_aplus-design" +362  native double
                   "inclination"      +370  native double
                   "spin1x"           +378  native double
                   "snr_V_advirgo-design" +386  native double
                   "snr_flow"         +394  native double
                   "observed_phase_maximized_snr_CE@H_ce-design" +402  native double
                   "mass1_detector"   +410  native double
               } 418 bytes
```

## authors

  * Reed Essick (reed.essick@gmail.com)
