# sars-covid-2-ncbi

## Download sars-covid-2 sequencing runs from NCBI

Run accessions and metadata was downloaded from [https://trace.ncbi.nlm.nih.gov](https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=SRR10903401%2CSRR10903402%2CSRR10902284%2CSRR10948474%2CSRR10948550%2CSRR10971381%2CSRR11092058%2CSRR11092057%2CSRR11092056%2CSRR11092064%2CSRR11085797%2CSRR11085737%2CSRR11085740%2CSRR11085733%2CSRR11085736%2CSRR11085738%2CSRR11085741%2CSRR11140744%2CSRR11140745%2CSRR11140749%2CSRR11140748%2CSRR11140747%2CSRR11140746%2CSRR11140751%2CSRR11140750%2CSRR11177792%2CSRR11241254%2CSRR11241255%2CSRR11247075%2CSRR11247076%2CSRR11247077%2CSRR11247078%2CSRR11267811%2CSRR11278090%2CSRR11278091%2CSRR11278092%2CSRR11278164%2CSRR11278165%2CSRR11278166%2CSRR11278167%2CSRR11278168&f=assay_type_s%3An%3Arna-seq%3Bplatform_s%3An%3Aillumina%3Ac&o=acc_s%3Aa&s=SRR11241255,SRR11241254,SRR11278090,SRR11278091,SRR11278164,SRR11247075,SRR11247076,SRR11247078,SRR11247077,SRR11092056,SRR11092057,SRR11092064,SRR11085733,SRR11085736,SRR11085737,SRR11085738,SRR11085740,SRR11085741,SRR11085797,SRR11278092,SRR11278165,SRR11278166,SRR11278167,SRR11278168,SRR11092058,SRR10971381,SRR10903401,SRR10903402,SRR11177792).
Runs were filtered by AssayType=="rna-seq" and Platform=="ILLUMINA".

## Install workflow

- Install Snakemake as described in <https://github.com/avilab/sarscov2>.

- Create a new working directory e.g. `covid2-ncbi` and (Fork +) clone this repository to working directory.

```bash
mkdir covid2-ncbi
cd covid2-ncbi
git clone https://github.com/avilab/sars-covid-2-ncbi.git .
```

## Running

Test run:

```bash
snakemake --use-conda -n
```

Download sequencing runs listed in *SraRunTable.txt*:

```bash
snakemake --use-conda -j
```

For all possible snakemake command line options please refer to snakemake tutorial <https://snakemake.readthedocs.io/en/stable/executing/cli.html>.

