{capture name = "t_vLab_data_code"}
<!--ajax:vLabTable-->

					<table style = "width:100%" class = "sortedTable" size = "{$T_TABLE_SIZE}" sortBy = "0" id = "vLabTable" useAjax = "1" rowsPerPage = "{$smarty.const.G_DEFAULT_TABLE_SIZE}" url = "{$T_MODULE_BASEURL}&">
						<tr class = "topTitle">
							<td class = "topTitle" name = "timestamp">{$smarty.const._DATE}</td>
							<td class = "topTitle" name = "data">{$smarty.const._DATA}</td>
						</tr>
	{foreach name = 'vLab_data_list' key = 'key' item = 'item' from = $T_DATA_SOURCE}
						<tr class = "defaultRowHeight {cycle values = "oddRowColor, evenRowColor"}">
							<td>#filter:timestamp-{$item.timestamp}#</td>
							<td>{$item.data}</td>
					</tr>
	{foreachelse}
					<tr class = "defaultRowHeight oddRowColor"><td class = "emptyCategory" colspan = "100%">{$smarty.const._NODATAFOUND}</td></tr>
	{/foreach}
				</table>

<!--/ajax:vLabTable-->

{/capture}
{eF_template_printBlock title = $smarty.const._MODULE_VLAB_VLABDATADASHBOARD data = $smarty.capture.t_vLab_data_code}