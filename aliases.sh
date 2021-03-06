alias rm='rm -i'
alias rmr='rm -I -r'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ltr='ls -ltrh'
alias fs1p='cd /fs1/per/'
alias fs1s='cd /fs1/per/proj/scRNAseq'
alias wgsrun='singularity exec --bind /fs1 /fs1/resources/containers/wgs_active.sif'
alias sq='squeue -o "%8i %12u %.8M %30j %3t %12P %.5Q %.6m %2C %6E %13R" --sort=-S,p,i'
alias sqp='sq | grep per'
alias sqr="sq | grep ' RUNNING'"
alias sac='sacct'
alias sacr='sacct | grep RUNNING'
alias psaux=' ps aux | grep per'
alias pscut=' ps aux | grep per | cut -b 1-100'
alias mlnext='ml Java; ml nextflow/19.04.1; ml singularity'
alias Nova='cd /fs1/seqdata/NovaSeq'

