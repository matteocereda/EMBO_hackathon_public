# EMBO_hackathon
Codes for EMBO Hackathon "The Spatial Biology of Cancer"



# Schedule

| Time | Schedule | 
| ---| ---|
|14:00-14:30 | Warm-up
|14:30-15:15| Level 1
|15:15-15:30|Discussion + disclosure next level
|15:30:16:30 |Level 2
|16:30-16:45 |Discussion + disclosure next level
|16:45-17:45 |Level 3
|17:45-18:00 |Game Over


# Proposed conditions
Participants will be cluster according to the background to have groups of homogeneous compositions.\
Every level will be provided with few chunks of codes, some functionals and some not, to help participants in solving tasks.\
Levels are of increasing difficulty.\
If a group will complete the level before the end of the section we will double-check the results and, if ok, register the timing.\
The group that solved all the levels in the smallest amount of time win the game. 



# Tasks for Levels

## Level 1
Visium: ricerca di candidati e associazioni tra tipi cellulari (e.g., seurat/altri rpackages)

1. Fornire un campione già processato (normalization+clustering)?
2. Signatures di gene sets (forniti insieme ai dati di espressione) e calcola score per spot e score medio per cluster 
3. Spatial correlation / hot-spot analysis tra signatures

## Level 2

Validazione usando MERSCOPE / **CosMx** / Xenium

- gradiente di espressione in funzione della distanza tra tipi cellulari (e.g., verificare se l’espressione di una signature nelle cellule tumorali cambia in funzione della loro distanza da cellule T, o vice versa) 
- definire un ‘cell neighborhood’ per ogni cellula (e.g., top 10-20 nearest neighbors), suddividere un tipo cellulare di interesse in gruppi in base all’espressione della signature da validare, e confrontare la composizione del neighborhood tra cellule con signature ‘high’ vs ‘low’

## Level 3
Dati Lunaphore su marker immunitari



# Dataset 
Data were retrieved from <https://www.nature.com/articles/s41467-024-47271-y> \
Data includes single-cell and Visium ST dataset downloaded from : <https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE211956> \
ST: 8 samples (visium) + 1 sample (cosmx) \
sc: 5 samples

|            | CRS | Visium sample ID | Visium sample GEO | 10x scRNAseq sample ID | 10x scRNAseq GEO | CosMx data                     |
|----------|-------|----------|--------------|----------|-------------|----------------------------|
| patient 1  | 1   | 1                | GSM6506110        |                        |                  |                                |
| patient 2  | 3   | 2                | GSM6506111        | Y2                     | GSM6506105       |                                |
| patient 3  | 3   | 3                | GSM6506112        | Y3                     | GSM6506106       |                                |
| patient 4  | 2   | 4                | GSM6506113        |                        |                  |                                |
| patient 5  | 3   | 5                | GSM6506114        | Y5                     | GSM6506107       | doi.org/10.5281/zenodo.8287971 |
| patient 6  | 2   | 6                | GSM6506115        |                        |                  |                                |
| patient 7  | 1   | 7                | GSM6506116        |                        |                  |                                |
| patient 8  | 1   | 8                | GSM6506117        |                        |                  |                                |
|            |     |                  |                   |                        |                  |                                |
| patient 9  | 1   |                  |                   | MJ10                   | GSM6506108       |                                |
| patient 10 | 1   |                  |                   | MJ11                   | GSM6506109       |                                |



# Overview of tasks
1. Identificazione clusters
2. Markers
3. Tipi cellulari
4. Interazioni ligandi - recettori  


# Code timing  
The measured timing of level 1 and level 2 updated to 30/06/2024 can be checked here: [hackathon timing table](https://docs.google.com/spreadsheets/d/1kqGGoXASyBZbYH7sB62ilbOTJR3MCoqmmn4tkzqR9ww/edit?gid=0#gid=0)




