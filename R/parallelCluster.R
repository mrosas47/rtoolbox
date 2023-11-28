#' @title parallelCluster
#'
#' @param n_cores number of cores
#' @param type type of cluster
#' 
#' @import parallel
#' @import doParallel
#' @import foreach
#' @import cli
#'
#' @return cluster object
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