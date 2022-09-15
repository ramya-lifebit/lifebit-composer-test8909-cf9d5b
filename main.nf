nextflow.enable.dsl=2

include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { download_reads_1 } from './modules/download_reads_1/module.nf'
include { downsample_1 } from './modules/downsample_1/module.nf'

workflow {
input1 = Channel.fromPath(params.fastq)
input2 = Channel.fromPath(params.accessions).splitCsv()
input3 = Channel.fromPath(params.fastq)
fastqc_1(input1)
download_reads_1(input2)
downsample_1(input3)
}
