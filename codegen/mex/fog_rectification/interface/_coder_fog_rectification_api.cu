/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_fog_rectification_api.cu
 *
 * Code generation for function '_coder_fog_rectification_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fog_rectification.h"
#include "_coder_fog_rectification_api.h"
#include "fog_rectification_data.h"

/* Variable Definitions */
static const int32_T iv0[3] = { 480, 640, 3 };

/* Function Declarations */
static uint8_T (*b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[921600];
static uint8_T (*c_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId))[921600];
static uint8_T (*emlrt_marshallIn(const mxArray *input, const char_T *identifier))
  [921600];
static const mxArray *emlrt_marshallOut(const uint8_T u[921600]);

/* Function Definitions */
static uint8_T (*b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[921600]
{
  uint8_T (*y)[921600];
  y = c_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static uint8_T (*c_emlrt_marshallIn(const mxArray *src, const
  emlrtMsgIdentifier *msgId))[921600]
{
  uint8_T (*ret)[921600];
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "uint8", false, 3U,
    iv0);
  ret = (uint8_T (*)[921600])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static uint8_T (*emlrt_marshallIn(const mxArray *input, const char_T *identifier))
  [921600]
{
  uint8_T (*y)[921600];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(input), &thisId);
  emlrtDestroyArray(&input);
  return y;
}
  static const mxArray *emlrt_marshallOut(const uint8_T u[921600])
{
  const mxArray *y;
  const mxArray *m0;
  static const int32_T iv2[3] = { 0, 0, 0 };

  y = NULL;
  m0 = emlrtCreateNumericArray(3, iv2, mxUINT8_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m0, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m0, iv0, 3);
  emlrtAssign(&y, m0);
  return y;
}

void fog_rectification_api(fog_rectificationStackData *SD, const mxArray * const
  prhs[1], const mxArray *plhs[1])
{
  uint8_T (*out)[921600];
  uint8_T (*input)[921600];
  out = (uint8_T (*)[921600])mxMalloc(sizeof(uint8_T [921600]));

  /* Marshall function inputs */
  input = emlrt_marshallIn(emlrtAlias(prhs[0]), "input");

  /* Invoke the target function */
  fog_rectification(SD, *input, *out);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(*out);
}

/* End of code generation (_coder_fog_rectification_api.cu) */
