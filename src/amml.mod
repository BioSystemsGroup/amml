// This model generated automatically from SBML

// unit definitions
import nsrunit;
unit conversion off;

// SBML property definitions
property sbmlRole=string;
property sbmlName=string;
property sbmlCompartment=string;

// SBML reactions
// clear: vC_L1 <=> vCCL 
// L1r: vCC <=> vC_L1 
// Cr: vC_L1 <=> vCC 

math main {
  realDomain time second;
  time.min=0;
  extern time.max;
  extern time.delta;

  // variable definitions
  real L1(time) ml;
  real C(time) ml;
  real CL(time) ml;
  real fbCLint = .469;
  real SFkp = .201;
  real Kpl = .1;
  real Qh = .1;
  real Qha = .1;
  real Qpv = .1;
  real clearrate(time);
  real L1toC(time);
  real CtoL1(time);
  real ModelValue_2;
  real ModelValue_3;
  real ModelValue_4;
  real ModelValue_5;
  real ModelValue_1;
  real ModelValue_0;
  real vC_L1(time) mmol;
  real vCCL(time) mmol;
  real vCC(time) mmol;
  real clear(time) millikatal;
  real L1r(time) millikatal;
  real Cr(time) millikatal;

  // equations
  when (time=time.min) L1 = 1;
  L1:time = ModelValue_0/(ModelValue_1*ModelValue_2);
  C = 1;
  CL = 1;
  clearrate = ModelValue_0/(ModelValue_1*ModelValue_2);
  L1toC = ModelValue_3/(ModelValue_1*ModelValue_2);
  CtoL1 = ModelValue_4+ModelValue_5;
  ModelValue_2 = Kpl;
  ModelValue_3 = Qh;
  ModelValue_4 = Qha;
  ModelValue_5 = Qpv;
  ModelValue_1 = SFkp;
  ModelValue_0 = fbCLint;
  when (time=time.min) vC_L1 = 0;
  vC_L1:time = -1*clear + L1r + -1*Cr;
  when (time=time.min) vCCL = 0;
  vCCL:time = clear;
  when (time=time.min) vCC = 5;
  vCC:time = -1*L1r + Cr;
  clear = clearrate*(vC_L1/L1);
  L1r = CtoL1*(vCC/C);
  Cr = L1toC*(vC_L1/L1);

  // variable properties
  L1.sbmlRole="compartment";
  C.sbmlRole="compartment";
  CL.sbmlRole="compartment";
  fbCLint.sbmlRole="parameter";
  SFkp.sbmlRole="parameter";
  Kpl.sbmlRole="parameter";
  Qh.sbmlRole="parameter";
  Qha.sbmlRole="parameter";
  Qpv.sbmlRole="parameter";
  clearrate.sbmlRole="parameter";
  L1toC.sbmlRole="parameter";
  CtoL1.sbmlRole="parameter";
  ModelValue_2.sbmlRole="parameter";
  ModelValue_3.sbmlRole="parameter";
  ModelValue_4.sbmlRole="parameter";
  ModelValue_5.sbmlRole="parameter";
  ModelValue_1.sbmlRole="parameter";
  ModelValue_0.sbmlRole="parameter";
  vC_L1.sbmlRole="species";
  vC_L1.sbmlCompartment="L1";
  vCCL.sbmlRole="species";
  vCCL.sbmlCompartment="CL";
  vCC.sbmlRole="species";
  vCC.sbmlCompartment="C";
  clear.sbmlRole="rate";
  L1r.sbmlRole="rate";
  Cr.sbmlRole="rate";
}

