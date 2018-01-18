/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_fog_rectification_mex.cu
 *
 * Code generation for function '_coder_fog_rectification_mex'
 *
 */

/* Include files */
#include "fog_rectification.h"
#include "_coder_fog_rectification_mex.h"
#include "fog_rectification_terminate.h"
#include "_coder_fog_rectification_api.h"
#include "fog_rectification_initialize.h"
#include "fog_rectification_data.h"

/* Function Declarations */
static void fog_rectification_mexFunction(fog_rectificationStackData *SD,
  int32_T nlhs, mxArray *plhs[1], int32_T nrhs, const mxArray *prhs[1]);

/* Function Definitions */
static void fog_rectification_mexFunction(fog_rectificationStackData *SD,
  int32_T nlhs, mxArray *plhs[1], int32_T nrhs, const mxArray *prhs[1])
{
  int32_T n;
  const mxArray *inputs[1];
  const mxArray *outputs[1];
  int32_T b_nlhs;

  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs",
                        5, 12, 1, 4, 17, "fog_rectification");
  }

  if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal,
                        "EMLRT:runTime:TooManyOutputArguments", 3, 4, 17,
                        "fog_rectification");
  }

  /* Temporary copy for mex inputs. */
  for (n = 0; n < nrhs; n++) {
    inputs[n] = prhs[n];
  }

  /* Call the function. */
  fog_rectification_api(SD, inputs, outputs);

  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    b_nlhs = 1;
  } else {
    b_nlhs = nlhs;
  }

  emlrtReturnArrays(b_nlhs, plhs, outputs);

  /* Module termination. */
  fog_rectification_terminate();
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  fog_rectificationStackData *c_fog_rectificationStackDataGlo = NULL;
  c_fog_rectificationStackDataGlo = (fog_rectificationStackData *)emlrtMxCalloc
    (1, 1U * sizeof(fog_rectificationStackData));
  mexAtExit(fog_rectification_atexit);

  /* Initialize the memory manager. */
  /* Module initialization. */
  fog_rectification_initialize();

  /* Dispatch the entry-point. */
  fog_rectification_mexFunction(c_fog_rectificationStackDataGlo, nlhs, plhs,
    nrhs, prhs);
  emlrtMxFree(c_fog_rectificationStackDataGlo);
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_fog_rectification_mex.cu) */
