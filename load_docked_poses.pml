# Load the protein
load pdbqt/protein_4CLI_cleaned.pdbqt, protein
hide everything
show cartoon, protein
set cartoon_transparency, 0.2
color gray80, protein
show surface, protein
set transparency, 0.7

# Load and style each docked ligand
load docked_common_protein_pdb/lorlatinib.pdb, lorlatinib
show sticks, lorlatinib
color orange, lorlatinib
set stick_radius, 0.25, lorlatinib

load docked_common_protein_pdb/crizotinib.pdb, crizotinib
show sticks, crizotinib
color yellow, crizotinib
set stick_radius, 0.25, crizotinib

load docked_common_protein_pdb/ceritinib.pdb, ceritinib
show sticks, ceritinib
color cyan, ceritinib
set stick_radius, 0.25, ceritinib

load docked_common_protein_pdb/alectinib.pdb, alectinib
show sticks, alectinib
color purple, alectinib
set stick_radius, 0.25, alectinib

load docked_common_protein_pdb/brigatinib.pdb, brigatinib
show sticks, brigatinib
color red, brigatinib
set stick_radius, 0.25, brigatinib

load docked_common_protein_pdb/ensartinib.pdb, ensartinib
show sticks, ensartinib
color green, ensartinib
set stick_radius, 0.25, ensartinib

# Adjust view
orient
zoom protein, 10