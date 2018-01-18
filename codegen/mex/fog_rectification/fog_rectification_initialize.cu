/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * fog_rectification_initialize.cu
 *
 * Code generation for function 'fog_rectification_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fog_rectification.h"
#include "fog_rectification_initialize.h"
#include "_coder_fog_rectification_mex.h"
#include "fog_rectification_data.h"

/* Function Definitions */
void fog_rectification_initialize(void)
{
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Image_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (fog_rectification_initialize.cu) */
