# Natural-Disaster-Prediction-Model-on-Earthquakes
Machine learning-based earthquake prediction model using seismic features, mRMR, SVR, HNN, EPSO, and Firebase Realtime Database.

Bachelor's Final Year Project focused on earthquake prediction using a computational-intelligence approach based on feature selection, Support Vector Regression (SVR), a Hybrid Neural Network (HNN), and Evolutionary Particle Swarm Optimization (EPSO).

Project overview

The original project works with earthquake datasets from three regions:

Chile
Hindukush
Southern California

The MATLAB implementation uses 60 seismic features derived from previous seismic events. A magnitude threshold of 5 is used to create the binary output labels.

The main processing flow is:

Earthquake data → Feature selection → SVR → HNN → EPSO → Classification results

The implementation in this repository is intentionally kept close to the original FYP code rather than being rewritten with newer machine-learning APIs. This is important because the repository is intended to preserve the original project implementation.

Repository structure
text
Natural-Disaster-Prediction-Earthquake/
├── README.md
├── src/
│   ├── HNN.m
│   ├── EPSO.m
│   ├── UseSVR.m
│   ├── UseNN.m
│   ├── UseEPSO.m
│   ├── irrel_filter.m
│   ├── redund_filter.m
│   ├── Output_Label.m
│   ├── Contingency_Table.m
│   └── OF.m
├── data/
│   ├── Chile,nM=50,dtp=15.xlsx
│   ├── Hindukush,nM=50,dtp=15.xls
│   └── Southern California,nM=50,dtp=15.xlsx
├── docs/
│   ├── FYP-Report.docx
│   └── FYP-Presentation.pptx
├── results/
└── screenshots/
Important note about Contingency_Table.m

Contingency_Table.m was referenced by the supplied MATLAB source files but was not present in the supplied project archive. The file included in src/ is therefore a reconstructed dependency based on the way the original code calls the function and the metrics documented in the FYP report.

It should not be presented as an original source file recovered from the FYP archive.

Original implementation

The project uses the older MATLAB neural-network workflow and the LIBSVM MATLAB interface. The code has not been converted to newer APIs such as fitrsvm or feedforwardnet because doing so could change the original implementation and results.

Before running the project, the MATLAB/LIBSVM compatibility requirements need to be checked.

Results reported in the FYP

The report presents the following final performance values:

Region	               Accuracy	  MCC	   R Score
Southern California	    90.6%	    0.722	  0.623
Chile	                  84.9%	    0.613	  0.603
Hindukush	              82.7%	    0.600	  0.580

These are the results reported in the original FYP documentation; they have not been independently reproduced in this repository yet.

Disclaimer

This project is a Bachelor's academic project implementing a computational model on historical earthquake data. It should not be interpreted as a real-time earthquake warning or a guarantee that future earthquakes can be predicted.

Reproduction status

The repository has been statically audited but the original MATLAB experiment has not yet been reproduced in this repository. Running the original implementation requires a compatible MATLAB environment and the LIBSVM MATLAB interface used by the original code.

The supplied archive also did not contain the randomorder_california file loaded by HNN.m. Because inventing a replacement could change the experiment, no replacement has been added.

See docs/CODE-AUDIT.md for the detailed audit and known execution dependencies/issues.
