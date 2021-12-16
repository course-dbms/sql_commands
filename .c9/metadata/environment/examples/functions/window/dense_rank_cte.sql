{"filter":false,"title":"dense_rank_cte.sql","tooltip":"/examples/functions/window/dense_rank_cte.sql","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":11,"column":43},"action":"remove","lines":["SELECT","\tproduct_name,","\tgroup_name,","\tprice,","\tDENSE_RANK () OVER (","\t\tPARTITION BY group_name","\t\tORDER BY","\t\t\tprice","\t)","FROM","\tproducts","INNER JOIN product_groups USING (group_id);"],"id":2},{"start":{"row":0,"column":0},"end":{"row":20,"column":16},"action":"insert","lines":["WITH cte AS(","\tSELECT","\t\tproduct_id,","\t\tproduct_name,","\t\tgroup_id,","\t\tprice,","\t\tDENSE_RANK () OVER ( ","\t\t\tPARTITION BY group_id","\t\t\tORDER BY price DESC","\t\t) price_rank ","\tFROM","\t\tproducts",") ","SELECT ","\tproduct_id, ","\tproduct_name, ","\tprice","FROM ","\tcte","WHERE ","\tprice_rank = 1;"]}],[{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"remove","lines":["C"],"id":3},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"remove","lines":["S"]},{"start":{"row":8,"column":19},"end":{"row":8,"column":20},"action":"remove","lines":["E"]},{"start":{"row":8,"column":18},"end":{"row":8,"column":19},"action":"remove","lines":["D"]},{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"remove","lines":[" "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":19,"column":0},"end":{"row":20,"column":16},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1637924488210,"hash":"4999bfe582018107ada7118ba14596bfb6e2b9d2"}