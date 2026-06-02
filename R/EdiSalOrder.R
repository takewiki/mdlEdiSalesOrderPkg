#' EDI销售订单查询
#'
#' @param dms_token
#' @param FBillNO
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' EdiSalOrder_view()
EdiSalOrder_view <- function(dms_token,FBillNO) {


  sql=paste0("
             exec rds_proc_Edi_GetOrderNo '",FBillNO,"'
             ")

  res = tsda::sql_select2(token =dms_token ,sql = sql)



  return(res)

}
