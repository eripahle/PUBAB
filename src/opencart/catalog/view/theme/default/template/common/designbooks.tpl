<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
   <div class="content">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    
      <div class="panel-body">
        <div class="well">
          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              </div>
              
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label class="control-label" for="input-year"><?php echo $entry_tahun; ?></label>
                <select name="filter_tahun" id="input-category-class" class="form-control">
                  <option value="*"></option>
                  <?php $i=2015; for ($i;$i<=2030;$i++) { ?>
                  <?php if ($i == $filter_tahun) { ?>
                  <option value="<?php echo $i; ?>" selected="selected"><?php echo $i; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label class="control-label" for="input-month"><?php echo $entry_bulan; ?></label>
                <select name="filter_bulan" id="input-category-class" class="form-control">
                 <option value="*"></option>
                  
                  <?php if ($filter_bulan === '01') { ?>
                  <option value="01" selected="selected">January</option>
                  <?php } else { ?>
                    <option value="01" >January</option>
                  <?php } ?>
                  <?php if("02"== $filter_bulan) { ?>
                  <option value="02" selected="selected">February</option>
                  <?php } else { ?>
                  <option value="02" >February</option>
                  <?php }if("03"== $filter_bulan) { ?>
                  <option value="03" selected="selected">March</option>
                  <?php } else{ ?>
                    <option value="03" >March</option>
                  <?php } if("04"== $filter_bulan) { ?>
                  <option value="04" selected="selected">April</option>
                  <?php } else{ ?>
                    <option value="04" >April</option>
                  <?php } if("05"== $filter_bulan) { ?>
                  <option value="05" selected="selected">May</option>
                  <?php } else { ?>
                   <option value="05" >May</option>
                  <?php }if("06"== $filter_bulan) { ?>
                  <option value="06" selected="selected">June</option>
                  <?php } else { ?>
                    <option value="06" >June</option>
                  <?php } if("07"== $filter_bulan) { ?>
                  <option value="07" selected="selected">July</option>
                  <?php } else{ ?>
                    <option value="07" >July</option>
                  <?php } if("08"== $filter_bulan) { ?>
                  <option value="08" selected="selected">August</option>
                  <?php } else { ?>
                  <option value="08" >August</option>
                  <?php }if("09"== $filter_bulan) { ?>
                  <option value="09" selected="selected">September</option>
                  <?php } else{ ?>
                    <option value="09" >September</option>
                  <?php } if("10"== $filter_bulan) { ?>
                  <option value="10" selected="selected">October</option>
                  <?php } else{ ?>
                    <option value="10" >October</option>
                  <?php } if("11"== $filter_bulan) { ?>
                  <option value="11" selected="selected">November</option>
                  <?php } else{ ?>
                    <option value="11" >November</option>
                  <?php } if("12"==$filter_bulan){ ?>
                  <option value="12" selected="selected">December</option>
                  <?php } else { ?>
                  <option value="12" >December</option>
                  <?php } ?>
                 
                </select>
              </div>
            </div>
            <div class="col-sm-2">
              <div class="form-group">
                <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
                <select name="filter_status" id="input-status" class="form-control">
                  <option value="*"></option>
                  <?php if ($filter_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <?php } ?>
                  <?php if (!$filter_status && !is_null($filter_status)) { ?>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
              
              <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
            </div>
          </div>
        </div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-product">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  
                  <td class="text-center"><?php echo $column_image; ?></td>
                  <td class="text-left" width="15%"><?php if ($sort == 'pd.name') { ?>
                    <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                    <?php } ?></td>
                 
                  <td class="text-left"><?php if ($sort == 'p.price') { ?>
                    <a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_price; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_price; ?>"><?php echo $column_price; ?></a>
                    <?php } ?></td>
                 
                  <td class="text-left"><?php if ($sort == 'p.status_author') { ?>
                    <a href="<?php echo $sort_status_author; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status_author; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status_author; ?>"><?php echo $column_status_author; ?></a>
                    <?php } ?></td>
                     <td class="text-left"><?php if ($sort == 'p.status_editor') { ?>
                    <a href="<?php echo $sort_status_editor; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status_editor; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status_editor; ?>"><?php echo $column_status_editor; ?></a>
                    <?php } ?></td>
                    <td class="text-left"><?php if ($sort == 'p.status_management') { ?>
                    <a href="<?php echo $sort_status_management; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status_management; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status_management; ?>"><?php echo $column_status_management; ?></a>
                    <?php } ?></td>
                    <td class="text-left"><?php if ($sort == 'p.status') { ?>
                    <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                    <?php } ?></td>
                   <td class="text-left"><?php echo $column_total_selling; ?></td>
                   <td class="text-left"><?php echo $column_your_royalty; ?></td>
                  <td class="text-left"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($products) { ?>
                <?php foreach ($products as $product) { ?>
                <tr>
                  
                  <td class="text-center"><?php if ($product['image']) { ?>
                    <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" class="img-thumbnail" />
                    <?php } else { ?>
                    <span class="img-thumbnail list"><i class="fa fa-camera fa-2x"></i></span>
                    <?php } ?></td>
                  <td class="text-left"><?php echo $product['name']; ?></td>
                 
                  <td class="text-left"><?php if ($product['special']) { ?>
                    <span style="text-decoration: line-through;"><?php echo $product['price']; ?></span><br/>
                    <div class="text-danger"><?php echo $product['special']; ?></div>
                    <?php } else { ?>
                    <?php echo $product['price']; ?>
                    <?php } ?></td>
                 
                  <td class="text-left"><?php echo $product['status1']; ?></td>
                  <td class="text-left"><?php echo $product['status2']; ?></td>
                  <td class="text-left"><?php echo $product['status3']; ?></td>
                  <td class="text-left"><?php echo $product['status']; ?></td>
                  <td class="text-left"><?php echo $product['totalSelling']; ?></td>
                  <td class="text-left"><?php echo $product['your_royalty']; ?></td>
                  <td class="text-left">
                    <a href="<?php echo $product['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                  </td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
  </div>
  <script type="text/javascript"><!--
$('#button-filter').on('click', function() {
  var url = 'index.php?route=common/mybooks/getEditingList';

  var filter_name = $('input[name=\'filter_name\']').val();

  if (filter_name) {
    url += '&filter_name=' + encodeURIComponent(filter_name);
  }

  var filter_model = $('input[name=\'filter_model\']').val();

  if (filter_model) {
    url += '&filter_model=' + encodeURIComponent(filter_model);
  }

  var filter_price = $('input[name=\'filter_price\']').val();

  if (filter_price) {
    url += '&filter_price=' + encodeURIComponent(filter_price);
  }

  var filter_quantity = $('input[name=\'filter_quantity\']').val();

  if (filter_quantity) {
    url += '&filter_quantity=' + encodeURIComponent(filter_quantity);
  }

  var filter_status = $('select[name=\'filter_status\']').val();

  if (filter_status != '*') {
    url += '&filter_status=' + encodeURIComponent(filter_status);
  }

  var filter_tahun = $('select[name=\'filter_tahun\']').val();

  if (filter_tahun != '*') {
    url += '&filter_tahun=' + encodeURIComponent(filter_tahun);
  }

  var filter_bulan = $('select[name=\'filter_bulan\']').val();

  if (filter_bulan != '*') {
    url += '&filter_bulan=' + encodeURIComponent(filter_bulan);
  }

  location = url;
});
//--></script> 
  <script type="text/javascript"><!--
$('input[name=\'filter_name\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['product_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'filter_name\']').val(item['label']);
  }
});

$('input[name=\'filter_model\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_model=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['model'],
            value: item['product_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'filter_model\']').val(item['label']);
  }
});
//--></script>
</div>
</div>
<?php echo $footer; ?>
