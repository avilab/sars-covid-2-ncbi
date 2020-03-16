import pandas as pd

df = pd.read_csv("SraRunTable.txt", sep = ",")
ACC = df[df["LibraryLayout"]=="PAIRED"]["Run"].tolist()

rule all:
    input: expand("data/{accession}_{pair}.fastq", accession = ACC, pair = [1, 2])

rule get_fastq_pe:
    output:
        # the wildcard name must be accession, pointing to an SRA number
        "data/{accession}_1.fastq",
        "data/{accession}_2.fastq"
    params:
        # optional extra arguments
        extra=""
    wrapper:
        "https://github.com/tpall/snakemake-wrappers/raw/0.49.0/bio/sra-tools/fasterq-dump"

