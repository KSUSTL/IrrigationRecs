---
title: "Irrigation Water Quality Tests"
author: "Kansas State Research and Extension Soil Testing Lab"
subtitle: Interpretation and Salinity Management Recommendations
output:
  html_document:
    df_print: paged
---

# Background

Saline and sodic soils typically occur in areas where evapotranspiration rates exceed precipitation rates, or where irrigation water quality is marginal. The quality of irrigation water is largely a function of dissolved salt concentration, where waters with a higher salt concentration are of lower quality than those with a lower salt concentration. The type of dissolved salts is also important to consider. The concentration of sodium (Na) is of particular concern, as dissolved Na in irrigation water can cause sodic soil conditions.

The salt content of soils and water can be evaluated by measuring their electrical conductivity (EC). For soils, this measurement is best taken from the filtrate of a saturated paste soil extraction. For water, the measurement can simply be performed on a sample of the irrigation water in question. The use of proper field sampling methods and laboratory protocols is crucial for the interpretation of subsequent measurements, but will not be discussed here.

# Objective

The goal of this script is to automate some calculations that are useful for those managing an agricultural irrigation system, and remediation of saline, sodic, or saline-sodic soils.

# Description of calculated values

The calculated values are: __sodium adsorption ratio (SAR)__, __potential salt load (PSL)__, and __leaching requirement (LR)__.

## Sodium Adsorption Ratio

The sodium adsorption ratio relates the concentration of sodium ions (Na^+^) to the concentrations of calcium (Ca^2+^) and magnesium (Mg^2+^) ions. These concentrations should be expressed in terms of cmol(+) kg^-1^ prior to calculation. Note that the concentration of cations in soils are often expressed in terms of mEq 100 g^-1^, and are equivalent to cmol(+) kg^-1^.

\begin{equation}
\text{SAR} = \frac{[\text{Na}^+]}{\sqrt{\frac{{[\text{Ca}^{2+}]}+{[\text{Mg}^{2+}]}}{2}}}
\end{equation}

The SAR is useful for determining whether a particular water is likely to induce sodicity, but can also be used to evaluate the current sodicity of a soil when determined from a saturated paste extract. Dispersion of clay and organic matter particles is likely if SAR > 13.

## Potential Salt Load

The total dissolved solids (TDS) in a water can estimated from the water's EC.

\begin{equation}
\text{TDS (mg/L)} = \text{EC (mS/cm)} \times 640;\ \text{EC}\leq 5\ \text{mS/cm} \\  
\text{TDS (mg/L)} = \text{EC (mS/cm)} \times 800;\ \text{EC}>5\ \text{mS/cm}
\end{equation}

The potential salt load is then calculated from the TDS, and will be reported in terms of lbs salt per acre-inch of water applied.

\begin{equation}
\text{PSL (lbs/ac-inch)} = \text{TDS (mg/L)} \times 0.226
\end{equation}

