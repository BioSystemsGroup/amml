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
// L1r: vC_PV <=> vC_L1 
// Cr: vC_CV <=> vCC 
// clear_L2: vC_L2 <=> vCCL 
// clear_L3: vC_L3 <=> vCCL 
// CtoPV: vCC <=> vC_PV 
// L3toCV: vC_L3 <=> vC_CV 
// L1toL2: vC_L1 <=> vC_L2 
// L2toL3: vC_L2 <=> vC_L3 
// CtoL1: vCC <=> vC_L1 

math main {
  realDomain time second;
  time.min=0;
  extern time.max;
  extern time.delta;

  // variable definitions
  real C(time) ml;
  real CL(time) ml;
  real L2(time) ml;
  real L3(time) ml;
  real CV(time) ml;
  real L1(time) ml;
  real PV(time) ml;
  real fbCLint = .469;
  real SFkp = .201;
  real Kpl = .1;
  real Qh = .1;
  real Qha = .1;
  real Qpv = .1;
  real clearrate(time);
  real lob_flow(time);
  real ModelValue_2;
  real ModelValue_3;
  real ModelValue_1;
  real ModelValue_0;
  real vC_L1(time) mmol;
  real vCCL(time) mmol;
  real vCC(time) mmol;
  real vC_PV(time) mmol;
  real vC_L2(time) mmol;
  real vC_L3(time) mmol;
  real vC_CV(time) mmol;
  real clear(time) millikatal;
  real L1r(time) millikatal;
  real Cr(time) millikatal;
  real clear_L2(time) millikatal;
  real clear_L3(time) millikatal;
  real CtoPV(time) millikatal;
  real L3toCV(time) millikatal;
  real L1toL2(time) millikatal;
  real L2toL3(time) millikatal;
  real CtoL1(time) millikatal;

  // equations
  C = 1;
  CL = 1;
  when (time=time.min) L2 = 1;
  L2:time = clearrate;
  when (time=time.min) L3 = 1;
  L3:time = clearrate;
  CV = lob_flow;
  when (time=time.min) L1 = 1;
  L1:time = clearrate;
  PV = Qpv;
  clearrate = ModelValue_0/(ModelValue_1*ModelValue_2);
  lob_flow = ModelValue_3/(ModelValue_1*ModelValue_2);
  ModelValue_2 = Kpl;
  ModelValue_3 = Qh;
  ModelValue_1 = SFkp;
  ModelValue_0 = fbCLint;
  when (time=time.min) vC_L1 = 0;
  vC_L1:time = -1*clear + L1r + -1*L1toL2 + CtoL1;
  when (time=time.min) vCCL = 0;
  vCCL:time = clear + clear_L2 + clear_L3;
  when (time=time.min) vCC = 5;
  vCC:time = Cr + -1*CtoPV + -1*CtoL1;
  when (time=time.min) vC_PV = 0;
  vC_PV:time = -1*L1r + CtoPV;
  when (time=time.min) vC_L2 = 0;
  vC_L2:time = -1*clear_L2 + L1toL2 + -1*L2toL3;
  when (time=time.min) vC_L3 = 0;
  vC_L3:time = -1*clear_L3 + -1*L3toCV + L2toL3;
  when (time=time.min) vC_CV = 0;
  vC_CV:time = -1*Cr + L3toCV;
  clear = clearrate*(vC_L1/L1);
  L1r = Qpv*(vC_PV/PV);
  Cr = Qh*(vC_CV/CV);
  clear_L2 = clearrate*(vC_L2/L2);
  clear_L3 = clearrate*(vC_L3/L3);
  CtoPV = Qpv*(vCC/C);
  L3toCV = lob_flow*(vC_L3/L3);
  L1toL2 = lob_flow*(vC_L1/L1);
  L2toL3 = lob_flow*(vC_L2/L2);
  CtoL1 = Qha*(vCC/C);

  // variable properties
  C.sbmlRole="compartment";
  CL.sbmlRole="compartment";
  L2.sbmlRole="compartment";
  L3.sbmlRole="compartment";
  CV.sbmlRole="compartment";
  L1.sbmlRole="compartment";
  PV.sbmlRole="compartment";
  fbCLint.sbmlRole="parameter";
  SFkp.sbmlRole="parameter";
  Kpl.sbmlRole="parameter";
  Qh.sbmlRole="parameter";
  Qha.sbmlRole="parameter";
  Qpv.sbmlRole="parameter";
  clearrate.sbmlRole="parameter";
  lob_flow.sbmlRole="parameter";
  ModelValue_2.sbmlRole="parameter";
  ModelValue_3.sbmlRole="parameter";
  ModelValue_1.sbmlRole="parameter";
  ModelValue_0.sbmlRole="parameter";
  vC_L1.sbmlRole="species";
  vC_L1.sbmlCompartment="L1";
  vCCL.sbmlRole="species";
  vCCL.sbmlCompartment="CL";
  vCC.sbmlRole="species";
  vCC.sbmlCompartment="C";
  vC_PV.sbmlRole="species";
  vC_PV.sbmlCompartment="PV";
  vC_L2.sbmlRole="species";
  vC_L2.sbmlCompartment="L2";
  vC_L3.sbmlRole="species";
  vC_L3.sbmlCompartment="L3";
  vC_CV.sbmlRole="species";
  vC_CV.sbmlCompartment="CV";
  clear.sbmlRole="rate";
  L1r.sbmlRole="rate";
  Cr.sbmlRole="rate";
  clear_L2.sbmlRole="rate";
  clear_L3.sbmlRole="rate";
  CtoPV.sbmlRole="rate";
  L3toCV.sbmlRole="rate";
  L1toL2.sbmlRole="rate";
  L2toL3.sbmlRole="rate";
  CtoL1.sbmlRole="rate";
}

