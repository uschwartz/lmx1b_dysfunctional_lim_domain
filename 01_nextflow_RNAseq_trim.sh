AnalysisDir=/Volumes/PromisePegasus/_Service_/S040_Kidney_RNAseq/
AnnoDir=/Users/admin/Annotation/MusMusculus/RNAseq_Challenge/

cd $AnalysisDir

###
nextflow run ~/00_scripts/nextflow/RNAseq_NAC  \
	--fastqPath $AnalysisDir/data/raw/S517/ \
	--outPath $AnalysisDir/240318_RNAseq/\
	--STARidxPath $AnnoDir/STARidx \
	--gtfPath $AnnoDir/nextflow \
	--gtfFile protein_coding_and_lincRNA.gtf \
	--strandness unstranded \
	--trim  \
	-w ./work_rnaseq -resume
