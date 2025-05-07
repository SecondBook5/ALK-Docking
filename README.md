# ALK Inhibitor Preparation and Pocket Detection Pipeline

This repository provides a comprehensive Python-based pipeline for preparing ALK kinase inhibitors and their corresponding protein structures for molecular docking studies. The workflow supports ligand optimization, pharmacophore visualization, protein cleaning, grid box definition, and pocket detection using structural clustering.



## Overview

The pipeline is divided into the following stages:

1. **Ligand Acquisition and Optimization**
   - Downloads ALK inhibitors (Crizotinib, Ceritinib, Alectinib, Brigatinib, Ensartinib, Lorlatinib) from PubChem in `.sdf` format.
   - Converts and optimizes ligand geometries using RDKit.
   - Outputs PDB-optimized and PDBQT-formatted ligands ready for docking.

2. **Protein Structure Preparation**
   - Downloads crystal structures of ALK bound to each inhibitor from the RCSB PDB.
   - Isolates protein chains and co-crystallized ligands.
   - Cleans protein structures using PDBFixer and protonates them at pH 7.4 using PDB2PQR.
   - Converts final cleaned structures into PDBQT format using Open Babel for compatibility with AutoDock Vina.

3. **Grid Box Detection and Visualization**
   - Calculates ligand centroids as docking grid centers.
   - Detects structural pockets using DBSCAN clustering on Cα atoms.
   - Visualizes docking boxes and centroids using Py3Dmol and NGLView.

4. **Pharmacophore Feature Extraction**
   - Extracts and displays key pharmacophore features using RDKit’s chemical feature factory.
   - Offers both 2D and 3D visualization of detected features.



5. **Pocket-Ligand Analysis**
   - Matches ligand centroids to nearest structural pockets.
   - Computes distance metrics and visual diagnostics.
   - Outputs pocket statistics such as volume, extent, and bounding coordinates.



## Dependencies

Install the following packages via `pip` or `conda`:

- `rdkit`
- `py3Dmol`
- `nglview`
- `MDAnalysis`
- `numpy`, `scipy`, `matplotlib`
- `pdbfixer`, `openmm`
- `biopython`
- External tools:
  - [`pdb2pqr`](https://github.com/Electrostatics/pdb2pqr)
  - [`Open Babel`](https://openbabel.org/)
  - [`Meeko`](https://github.com/forlilab/Meeko)

## Folder Structure

```

.
├── ligands/               # Contains all downloaded and optimized ligand files (SDF, PDB, PDBQT)
├── protein_structures/    # Downloaded and cleaned protein structures (PDB, PQR, PDBQT)
├── ca_coords/             # Alpha-carbon coordinates for pocket clustering
├── pdbqt/                 # Final docking-ready protein/ligand files in PDBQT format
├── gridbox_html/          # Saved visualizations of docking grid boxes (HTML)
├── annotated_views/       # Interactive visualizations with ligand and centroid annotations

````

## Usage

Run the pipeline step-by-step in a Jupyter Notebook, or modularize it into scripts:

```bash
python download_ligands.py
python optimize_ligands.py
python download_proteins.py
python clean_proteins.py
python detect_pockets.py
python prepare_docking_files.py
````

Each script is fully documented and can be run independently, making the workflow flexible and extensible.

## Citation

If you use this pipeline in your research, please cite the RDKit, OpenMM, and other toolkits as appropriate.



