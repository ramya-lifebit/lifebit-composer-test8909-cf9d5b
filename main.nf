nextflow.enable.dsl=2

include { fastqc_1 } from './modules/fastqc_1/module.nf'

workflow {
input1 = Channel.fromPath(params.fastq)
fastqc_1(input1)
}
