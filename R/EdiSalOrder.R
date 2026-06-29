#' EDI销售订单查询
#'
#' @param erp_token
#' @param FBillNO
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' EdiSalOrder_view()
EdiSalOrder_view <- function(erp_token,FBillNO) {


  sql=paste0("
             exec rds_proc_Edi_GetOrderNo '",FBillNO,"'
             ")

  res = tsda::sql_select2(token =erp_token ,sql = sql)



  return(res)

}



#' EDI销售订单删除
#'
#' @param erp_token
#' @param FBillNO
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' EdiSalOrder_delete()
EdiSalOrder_delete <- function(erp_token,FBillNO) {


  sql=paste0("
             exec rds_proc_Edi_GetOrderNo_delete '",FBillNO,"'
             ")

  res = tsda::sql_delete2(token =erp_token ,sql_str = sql)



  return(res)

}

