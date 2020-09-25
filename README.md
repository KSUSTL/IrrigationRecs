Irrigation Water Quality Tests - Interpretation and Recommendations
================
Bryan Rutter and Dorivar Ruiz Diaz – Kansas State University Soil
Testing Lab

  - [Background](#background)
  - [Objective](#objective)
  - [Description of calculated
    values](#description-of-calculated-values)
      - [Sodium Adsorption Ratio](#sodium-adsorption-ratio)
      - [Potential Salt Load](#potential-salt-load)
      - [Leaching Requirement](#leaching-requirement)
  - [References](#references)

# Background

Saline and sodic soils typically occur in areas where evapotranspiration
rates exceed precipitation rates, or where irrigation water quality is
marginal. The quality of irrigation water is largely a function of
dissolved salt content, where waters with a higher salt content are of
lower quality than those with a lower salt content. The type of
dissolved salts is also important to consider. Dissolve sodium (Na) is
of particular concern, as it can cause sodic soil conditions
(e.g. disperion of clay and organic matter).

The salt content of soils and water can be evaluated by measuring their
electrical conductivity (EC). For soils, this measurement is best taken
from the filtrate of a soil saturated paste extraction. For water, the
measurement can simply be performed on a sample of the irrigation water
in question. The use of proper sampling methods and laboratory protocols
is crucial for the interpretation of subsequent measurements, but is not
discussed here.

# Objective

The goal of this project is to create an R script that automates some
calculations that are useful for those who are managing irrigation
systems for the production of agricultural crops, lawns, and gardeners.

# Description of calculated values

The calculated values are: *sodium adsorption ratio (SAR)*, *potential
salt load (PSL)*, and *leaching requirement (LR)*.

## Sodium Adsorption Ratio

The sodium adsorption ratio (SAR) relates the concentration of sodium
ions (Na<sup>+</sup>) to the concentrations of calcium (Ca<sup>2+</sup>)
and magnesium (Mg<sup>2+</sup>) ions. These concentrations should be
expressed in terms of cmol(+) kg<sup>-1</sup> prior to calculation. Note
that the concentration of cations in soils are often expressed in terms
of mEq 100 g<sup>-1</sup>, which is equivalent to cmol(+)
kg<sup>-1</sup>.

  
![&#10;\\text{SAR} =
\\frac{\[\\text{Na}^+\]}{\\sqrt{\\frac{\[\\text{Ca}^{2+}\]+\[\\text{Mg}^{2+}\]}{2}}}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BSAR%7D%20%3D%20%5Cfrac%7B%5B%5Ctext%7BNa%7D%5E%2B%5D%7D%7B%5Csqrt%7B%5Cfrac%7B%5B%5Ctext%7BCa%7D%5E%7B2%2B%7D%5D%2B%5B%5Ctext%7BMg%7D%5E%7B2%2B%7D%5D%7D%7B2%7D%7D%7D%0A
"
\\text{SAR} = \\frac{[\\text{Na}^+]}{\\sqrt{\\frac{[\\text{Ca}^{2+}]+[\\text{Mg}^{2+}]}{2}}}
")  
This SAR value is useful for determining whether a particular water is
likely to induce sodicity, but can also be used to evaluate the current
sodicity of a soil when determined from a saturated paste extract.
Dispersion of clay and organic matter particles is likely if SAR \> 13.

## Potential Salt Load

The total dissolved salts (TDS) in irrigation water can be estimated
from EC of a water sample.

  
![&#10;\\text{TDS (mg/L)} = \\text{EC} \\times 640\\ ;\\ \\ \\text{EC}
\\leq 5\\ \\text{mS
cm}^{-1}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BTDS%20%28mg%2FL%29%7D%20%3D%20%5Ctext%7BEC%7D%20%5Ctimes%20640%5C%20%3B%5C%20%5C%20%5Ctext%7BEC%7D%20%5Cleq%205%5C%20%5Ctext%7BmS%20cm%7D%5E%7B-1%7D%0A
"
\\text{TDS (mg/L)} = \\text{EC} \\times 640\\ ;\\ \\ \\text{EC} \\leq 5\\ \\text{mS cm}^{-1}
")  

  
![&#10;\\text{TDS (mg/L)} = \\text{EC} \\times 800\\ ;\\ \\ \\text{EC}
\> 5\\ \\text{mS
cm}^{-1}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BTDS%20%28mg%2FL%29%7D%20%3D%20%5Ctext%7BEC%7D%20%5Ctimes%20800%5C%20%3B%5C%20%5C%20%5Ctext%7BEC%7D%20%3E%205%5C%20%5Ctext%7BmS%20cm%7D%5E%7B-1%7D%0A
"
\\text{TDS (mg/L)} = \\text{EC} \\times 800\\ ;\\ \\ \\text{EC} \> 5\\ \\text{mS cm}^{-1}
")  

The potential salt load (PSL) can then be calculated from the TDS, and
reported in terms of lbs of salt per acre-inch of water applied. This
value represents the maximum amount of salt that would be added to the
soil assuming no leaching occurs.

  
![&#10;\\text{PSL (lbs/ac-inch)} = \\text{TDS (mg/L)}
\\times 0.226&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BPSL%20%28lbs%2Fac-inch%29%7D%20%3D%20%5Ctext%7BTDS%20%28mg%2FL%29%7D%20%5Ctimes%200.226%0A
"
\\text{PSL (lbs/ac-inch)} = \\text{TDS (mg/L)} \\times 0.226
")  

## Leaching Requirement

Note: A more comprehensive discussion of leaching fraction (LF),
leaching requirement (LR), and comparisons of various models used to
estimate LR can be found in Corwin, Rhoades, and Šimůnek
([2011](#ref-Corwin2011)). A brief description of these terms has been
provided below, and is largely drawn from their paper.

Leaching fraction (LF) is defined as the fraction of applied irrigation
water that moves beyond the plant root-zone, and represents the level of
drainage and leaching of salts. As LF increases, the level of salt
accumulation in the root-zone of a soil decreases. The leaching
requirement (LR) represents the lowest LF that could be allowed without
soil salinity becoming excessive and preventing optimal plant growth and
crop yield. The calculation of LR requires, at minimum, knowledge of the
salinity of the irrigation water to be applied to a crop, as well as the
maximum soil EC that still allows for optimum yield of the crop to be
grown.

Numerous models have been employed for the estimation of LR. Due to its
simplicity, we use the Rhoades LR model here, also referred to as the
Traditional LR Model (Corwin, Rhoades, and Šimůnek
[2011](#ref-Corwin2011)).

  
![&#10;\\text{LR} =
\\frac{\\text{EC}\_{\\text{irr}}}{5\\text{EC}^\*\_{\\text{soil}}-\\text{EC}\_{\\text{irr}}}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BLR%7D%20%3D%20%5Cfrac%7B%5Ctext%7BEC%7D_%7B%5Ctext%7Birr%7D%7D%7D%7B5%5Ctext%7BEC%7D%5E%2A_%7B%5Ctext%7Bsoil%7D%7D-%5Ctext%7BEC%7D_%7B%5Ctext%7Birr%7D%7D%7D%0A
"
\\text{LR} = \\frac{\\text{EC}_{\\text{irr}}}{5\\text{EC}^*_{\\text{soil}}-\\text{EC}_{\\text{irr}}}
")  
Where:  
LR = leaching requirement (dim)  
EC<sub>irr</sub> = EC measurement of irrigation water sample (mS
cm<sup>-1</sup>)  
EC<sup>\*</sup><sub>soil</sub> = the maximum soil EC that still allows
for optimum yield of the crop to be grown

**Important Notes:**

  - LR is a maintenance leaching and is **NOT** the fraction of
    irrigation water required to remediate a saline, sodic, or
    saline-sodic soil.  
  - LR should be calculated based on the least salt-tolerant crop in a
    crop-rotation. For example, if a crop rotation consists of
    corn-wheat-soybean, the LR should be calculated based on the salt
    tolerance of soybean (\~ 4 mS cm<sup>-1</sup>)  
  - For recommendations on the management and remediation of saline,
    sodic, and saline-sodic soils, see Ruiz Diaz and Presley
    ([2017](#ref-RuizDiaz2017))

# References

<div id="refs" class="references">

<div id="ref-Corwin2011">

Corwin, Dennis L., James D. Rhoades, and J. Šimůnek. 2011. “Leaching
requirement: Steady-state versus transient models.” *Agricultural
Salinity Assessment and Management: Second Edition*, no. January:
801–24. <https://doi.org/10.1061/9780784411698.ch26>.

</div>

<div id="ref-RuizDiaz2017">

Ruiz Diaz, Dorivar, and DeAnn Presley. 2017. “Management of Saline and
Sodic Soils (MF1022).” *Kansas State University Agricultural Experiment
Station and Cooperative Extension Service*, 1–4.
<https://bookstore.ksre.ksu.edu/pubs/MF1022.pdf>.

</div>

</div>
