#' @title Directly make parallel cluster
#' 
#' @description Make a parallel cluster with the number of cores specified. If no number of cores is specified, the number of cores is detected and one is subtracted from that number. The cluster is registered with `doParallel` and the number of workers is returned.
#' 
#' @param n_cores number of cores. If NULL, the number of cores is detected and one is subtracted from that number so as to not overload the system.
#' @param type type of cluster.
#' 
#' @import parallel
#' @import doParallel
#' @import foreach
#' @import cli
#'
#' @return Parallel cluster object
#' @export parallelCluster
#'
#' @examples
#' cl <- parallelCluster()
#' 
parallelCluster <- function(n_cores = NULL, type = 'PSOCK') {
  
  if (is.null(n_cores)) {
    
    n <- parallel::detectCores() - 1
    
  } else {
    
    n <- n_cores
    
  }
  
  c <- parallel::makeCluster(n, type = type)
  
  doParallel::registerDoParallel(c)
  
  w <- foreach::getDoParWorkers()
  check <- foreach::getDoParRegistered()
  
  if (check) {
    
    cli::cli_alert_success(paste0('Parallel cluster registered with ', w, ' workers.'))
    
  } else {
    
    cli::cli_alert_danger('Parallel cluster registration failed.')
    stopCluster(c)
    stop()
    
  }
  
  return(c)
  
}