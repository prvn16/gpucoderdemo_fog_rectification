/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * fog_rectification_terminate.cu
 *
 * Code generation for function 'fog_rectification_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fog_rectification.h"
#include "fog_rectification_terminate.h"
#include "_coder_fog_rectification_mex.h"
#include "fog_rectification_data.h"

/* Function Definitions */
void fog_rectification_atexit(void)
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void fog_rectification_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (fog_rectification_terminate.cu) */
