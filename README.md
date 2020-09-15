Irrigation Water Quality Tests
================
Kansas State Research and Extension Soil Testing Lab

# Background

Saline and sodic soils typically occur in areas where evapotranspiration
rates exceed precipitation rates, or where irrigation water quality is
marginal. The quality of irrigation water is largely a function of
dissolved salt concentration, where waters with a higher salt
concentration are of lower quality than those with a lower salt
concentration. The type of dissolved salts is also important to
consider. The concentration of sodium (Na) is of particular concern, as
dissolved Na in irrigation water can cause sodic soil conditions.

The salt content of soils and water can be evaluated by measuring their
electrical conductivity (EC). For soils, this measurement is best taken
from the filtrate of a saturated paste soil extraction. For water, the
measurement can simply be performed on a sample of the irrigation water
in question. The use of proper field sampling methods and laboratory
protocols is crucial for the interpretation of subsequent measurements,
but will not be discussed here.

# Objective

The goal of this script is to automate some calculations that are useful
for those managing an agricultural irrigation system, and remediation of
saline, sodic, or saline-sodic soils.

# Description of calculated values

The calculated values are: **sodium adsorption ratio (SAR)**,
**potential salt load (PSL)**, and **leaching requirement (LR)**.

## Sodium Adsorption Ratio

The sodium adsorption ratio relates the concentration of sodium ions
(Na<sup>+</sup>) to the concentrations of calcium (Ca<sup>2+</sup>) and
magnesium (Mg<sup>2+</sup>) ions. These concentrations should be
expressed in terms of cmol(+) kg<sup>-1</sup> prior to calculation. Note
that the concentration of cations in soils are often expressed in terms
of mEq 100 g<sup>-1</sup>, and are equivalent to cmol(+)
kg<sup>-1</sup>.

  
![&#10;\\text{SAR} =
\\frac{\[\\text{Na}^+\]}{\\sqrt{\\frac{{\[\\text{Ca}^{2+}\]}+{\[\\text{Mg}^{2+}\]}}{2}}}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BSAR%7D%20%3D%20%5Cfrac%7B%5B%5Ctext%7BNa%7D%5E%2B%5D%7D%7B%5Csqrt%7B%5Cfrac%7B%7B%5B%5Ctext%7BCa%7D%5E%7B2%2B%7D%5D%7D%2B%7B%5B%5Ctext%7BMg%7D%5E%7B2%2B%7D%5D%7D%7D%7B2%7D%7D%7D%0A
"
\\text{SAR} = \\frac{[\\text{Na}^+]}{\\sqrt{\\frac{{[\\text{Ca}^{2+}]}+{[\\text{Mg}^{2+}]}}{2}}}
")  

The SAR is useful for determining whether a particular water is likely
to induce sodicity, but can also be used to evaluate the current
sodicity of a soil when determined from a saturated paste extract.
Dispersion of clay and organic matter particles is likely if SAR \> 13.

## Potential Salt Load

The total dissolved solids (TDS) in a water can estimated from the
water’s EC.

  
![&#10;\\text{TDS} = \\text{EC}\\times 640; \\text{EC} \\leq 5\\
\\text{mS
cm}^{-1}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BTDS%7D%20%3D%20%5Ctext%7BEC%7D%5Ctimes%20640%3B%20%5Ctext%7BEC%7D%20%5Cleq%205%5C%20%5Ctext%7BmS%20cm%7D%5E%7B-1%7D%0A
"
\\text{TDS} = \\text{EC}\\times 640; \\text{EC} \\leq 5\\ \\text{mS cm}^{-1}
")  
  
![&#10;\\text{TDS} = \\text{EC}\\times 800; \\text{EC} \> 5\\ \\text{mS
cm}^{-1}&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BTDS%7D%20%3D%20%5Ctext%7BEC%7D%5Ctimes%20800%3B%20%5Ctext%7BEC%7D%20%3E%205%5C%20%5Ctext%7BmS%20cm%7D%5E%7B-1%7D%0A
"
\\text{TDS} = \\text{EC}\\times 800; \\text{EC} \> 5\\ \\text{mS cm}^{-1}
")  

The potential salt load can then be calculated from the TDS, and
reported in terms of lbs of salt per acre-inch of water applied.

  
![&#10;\\text{PSL (lbs/ac-inch)} = \\text{TDS (mg/L)}
\\times 0.226&#10;](https://latex.codecogs.com/png.latex?%0A%5Ctext%7BPSL%20%28lbs%2Fac-inch%29%7D%20%3D%20%5Ctext%7BTDS%20%28mg%2FL%29%7D%20%5Ctimes%200.226%0A
"
\\text{PSL (lbs/ac-inch)} = \\text{TDS (mg/L)} \\times 0.226
")
