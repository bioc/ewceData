#' @import ExperimentHub

.my_internal_global_variables <- new.env(parent=emptyenv())

.get_eh <- function() get("eh", envir=.my_internal_global_variables)
.set_eh <- function(value) assign("eh", value,
                                  envir=.my_internal_global_variables)

get_ExperimentHub <- function(localHub=FALSE)
{
  eh <- try(.get_eh(), silent=TRUE)
  if (inherits(eh, "try-error")) {
    eh <- ExperimentHub::ExperimentHub(localHub = localHub)
    .set_eh(eh)
  }
  eh
}

#internal functions to call the data quickly
#doesn't require multiple calls to eh
#' tt_alzh
#'
#' \code{tt_alzh} returns the tt_alzh dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return tt_alzh dataset
#' @examples tt_alzh()
#' @export
tt_alzh <- function(localHub = FALSE)
{
  eh <- get_ExperimentHub(localHub = localHub)
  eh[["EH5373"]]
}

#' tt_alzh_BA36
#'
#' \code{tt_alzh_BA36} returns the tt_alzh_BA36 dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return tt_alzh_BA36 dataset
#' @examples tt_alzh_BA36()
#' @export
tt_alzh_BA36 <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  tt_alzh_BA36 <- eh[["EH5374"]]
}

#' tt_alzh_BA44
#'
#' \code{tt_alzh_BA44} returns the tt_alzh_BA44 dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return tt_alzh_BA44 dataset
#' @examples tt_alzh_BA44()
#' @export
tt_alzh_BA44 <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  tt_alzh_BA44 <- eh[["EH5375"]]
}

#' ctd
#'
#' \code{ctd} returns the ctd dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return ctd dataset
#' @examples ctd()
#' @export
ctd <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  ctd <- eh[["EH5376"]]
}

#' example_genelist
#'
#' \code{example_genelist} returns the example_genelist dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return example_genelist dataset
#' @examples example_genelist()
#' @export
example_genelist <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  example_genelist <- eh[["EH5372"]]
}

#' mouse_to_human_homologs
#'
#' \code{mouse_to_human_homologs} returns the mouse_to_human_homologs dataset
#' @return mouse_to_human_homologs dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @examples mouse_to_human_homologs()
#' @export
mouse_to_human_homologs <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  mouse_to_human_homologs <- eh[["EH5367"]]
}

#' all_mgi
#'
#' \code{all_mgi} returns the all_mgi dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return all_mgi dataset
#' @examples all_mgi()
#' @export
all_mgi<- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  all_mgi <- eh[["EH5369"]]
}

#' all_hgnc
#'
#' \code{all_hgnc} returns the all_hgnc dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return all_hgnc dataset
#' @examples all_hgnc()
#' @export
all_hgnc  <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  all_hgnc <- eh[["EH5371"]]
}

#' cortex_mrna
#'
#' \code{cortex_mrna} returns the cortex_mrna dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return cortex_mrna dataset
#' @examples cortex_mrna()
#' @export
cortex_mrna  <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  cortex_mrna <- eh[["EH5381"]]
}

#' alzh_gwas_top100
#'
#' \code{alzh_gwas_top100} returns the alzh_gwas_top100 dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return alzh_gwas_top100 dataset
#' @examples alzh_gwas_top100
#' @export
alzh_gwas_top100  <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  alzh_gwas_top100 <- eh[["EH5382"]]
}

#' ensembl_transcript_lengths_GCcontent
#'
#' \code{ensembl_transcript_lengths_GCcontent} returns the ensembl_transcript_lengths_GCcontent dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return ensembl_transcript_lengths_GCcontent dataset
#' @examples ensembl_transcript_lengths_GCcontent()
#' @export
ensembl_transcript_lengths_GCcontent  <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  ensembl_transcript_lengths_GCcontent <- eh[["EH5366"]]
}

#' all_mgi_wtEnsembl
#'
#' \code{all_mgi_wtEnsembl} returns the all_mgi_wtEnsembl dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return all_mgi_wtEnsembl dataset
#' @examples all_mgi_wtEnsembl()
#' @export
all_mgi_wtEnsembl <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  all_mgi_wtEnsembl <- eh[["EH5368"]]
}

#' all_hgnc_wtEnsembl
#'
#' \code{all_hgnc_wtEnsembl} returns the all_hgnc_wtEnsembl dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return all_hgnc_wtEnsembl dataset
#' @examples all_hgnc_wtEnsembl()
#' @export
all_hgnc_wtEnsembl <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  all_hgnc_wtEnsembl <- eh[["EH5370"]]
}

#' schiz_genes
#'
#' \code{schiz_genes} returns the schiz_genes dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return schiz_genes dataset
#' @examples schiz_genes()
#' @export
schiz_genes <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  schiz_genes <- eh[["EH5377"]]
}

#' hpsd_genes
#'
#' \code{hpsd_genes} returns the hpsd_genes dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return hpsd_genes dataset
#' @examples hpsd_genes()
#' @export
hpsd_genes <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  hpsd_genes <- eh[["EH5378"]]
}

#' rbfox_genes
#'
#' \code{rbfox_genes} returns the rbfox_genes dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return rbfox_genes dataset
#' @examples rbfox_genes()
#' @export
rbfox_genes <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  rbfox_genes <- eh[["EH5379"]]
}

#' id_genes
#'
#' \code{id_genes} returns the id_genes dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return id_genes dataset
#' @examples id_genes()
#' @export
id_genes <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  id_genes <- eh[["EH5380"]]
}

#' mgi_synonym_data
#'
#' \code{mgi_synonym_data} returns the mgi_synonym_data dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return mgi_synonym_data dataset
#' @examples mgi_synonym_data()
#' @export
mgi_synonym_data <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  mgi_synonym_data <- eh[["EH5383"]]
}


#' hypothalamus_mrna
#'
#' \code{hypothalamus_mrna} returns the hypothalamus_mrna dataset
#' @param localHub If working offline, add argument localHub=TRUE to work 
#' with a local, non-updated hub; It will only have resources available that
#' have previously been downloaded. If offline, Please also see BiocManager
#' vignette section on offline use to ensure proper functionality. 
#' @return hypothalamus_mrna dataset
#' @examples hypothalamus_mrna()
#' @export
hypothalamus_mrna  <- function(localHub = FALSE){
  eh <- get_ExperimentHub(localHub = localHub)
  hypothalamus_mrna <- eh[["EH5446"]]
}
