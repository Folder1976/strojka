<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-data1" data-toggle="tab">Металочерепица</a></li>
            <li><a href="#tab-data2" data-toggle="tab">Мягкая кровля</a></li>
            
			<li><a href="#tab-data3" data-toggle="tab">Водосток метал</a></li>
            <li><a href="#tab-data4" data-toggle="tab">Водосток ПВХ</a></li>
            
			<li><a href="#tab-data5" data-toggle="tab">Софит метал</a></li>
            <li><a href="#tab-data6" data-toggle="tab">Софит ПВХ</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-data1">
              <div class="table-responsive">
                <table id="attribute1" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute1_row = 0;
						$group_id = 1;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute1-row<?php echo $attribute1_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute1_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute1-row<?php echo $attribute1_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute1_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute1();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-data2">
              <div class="table-responsive">
                <table id="attribute2" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute2_row = 0;
						$group_id = 2;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute2-row<?php echo $attribute2_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute2_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute2-row<?php echo $attribute2_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute2_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute2();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-data3">
              <div class="table-responsive">
                <table id="attribute3" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute3_row = 0;
						$group_id = 3;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute3-row<?php echo $attribute3_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute3_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute3-row<?php echo $attribute3_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute3_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute3();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-data4">
              <div class="table-responsive">
                <table id="attribute4" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute4_row = 0;
						$group_id = 4;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute4-row<?php echo $attribute4_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute4_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute4-row<?php echo $attribute4_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute4_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute4();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
     	    <div class="tab-pane" id="tab-data5">
              <div class="table-responsive">
                <table id="attribute5" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute5_row = 0;
						$group_id = 5;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute5-row<?php echo $attribute5_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute5_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute5-row<?php echo $attribute5_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute5_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute5();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
    	    <div class="tab-pane" id="tab-data6">
              <div class="table-responsive">
                <table id="attribute6" class="table table-striped table-bordered table-hover">
                  <thead>
				    <tr>
                      <td class="text-left">Подгруппа</td>
                      <td class="text-left">Поле</td>
                      <td class="text-left">Товар / Услуга</td>
                      <td class="text-left">мера</td>
                      <td class="text-left">Цена</td>
					  <td class="text-left">Коэф-т</td>
                      <td class="text-left">Действие</td>
                      <td class="text-left">Запас %</td>
                      <td class="text-left">Сорт</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
						$attribute6_row = 0;
						$group_id = 6;
					?>
                    <?php foreach ($calculators[$group_id] as $calculator) { ?>
                    <tr id="attribute6-row<?php echo $attribute6_row; ?>">
                      <td class="text-left">
						<select style="width: 100px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][sub_group_id]" class="form-control">
							<?php foreach ($sub_groups as $id => $group) { ?>
							<?php if ($calculator['sub_group_id'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
			
                        <input type="hidden" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][group_id]" value="<?php echo $calculator['group_id']; ?>" />
			            <input type="hidden" class='main_id' name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][id]" value="<?php echo $calculator['id']; ?>" />
					  </td>
                      <td class="text-left">
						<select style="width: 150px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][key]" class="form-control">
							<?php foreach ($keys[$group_id] as $id => $group) { ?>
							<?php if ($calculator['key'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left" style="width: 70%">
						<input type="text" style="width: 100%" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][name]" value="<?php echo $calculator['name']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 70px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][mera]" value="<?php echo $calculator['mera']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 60px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][price]" value="<?php echo $calculator['price']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][koef]" value="<?php echo $calculator['koef']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<select style="width: 120px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][operation]" class="form-control">
							<?php foreach ($operations as $id => $group) { ?>
							<?php if ($calculator['operation'] == $id) { ?>
							<option value="<?php echo $id; ?>" selected="selected"><?php echo $group; ?></option>
							<?php } else { ?>
							<option value="<?php echo $id; ?>"><?php echo $group; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][plus]" value="<?php echo $calculator['plus']; ?>" class="form-control" />
					  </td>
	                 <td class="text-left">
						<input type="text" style="width: 50px" name="calculator[<?php echo $group_id; ?>][<?php echo $attribute6_row; ?>][sort]" value="<?php echo $calculator['sort']; ?>" class="form-control" />
					  </td>
         
		              <td class="text-left"><button type="button" onclick="$('#attribute6-row<?php echo $attribute6_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">
					  <i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute6_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="9">Добавить поле</td>
                      <td class="text-left"><button type="button" onclick="addAttribute6();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i>
					  </button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
     	   </div>
        </form>
      </div>
    </div>
  </div>

<script type="text/javascript"><!--
var attribute1_row = <?php echo $attribute1_row; ?>;

function addAttribute1() {
	
	var row = $('#attribute1-row'+(attribute1_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute1-row' + attribute1_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[1]['+(attribute1_row-1)+']','calculator[1][' + attribute1_row + ']');
	}
	
	$('#attribute1 tbody').append(html);
	
	$('#attribute1-row' + attribute1_row + ' .main_id').val('');

	attribute1_row++;
}
//--></script>


<script type="text/javascript"><!--
var attribute2_row = <?php echo $attribute2_row; ?>;

function addAttribute2() {
	
	var row = $('#attribute2-row'+(attribute2_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute2-row' + attribute2_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[2]['+(attribute2_row-1)+']','calculator[2][' + attribute2_row + ']');
	}
	
	$('#attribute2 tbody').append(html);
	
	$('#attribute2-row' + attribute2_row + ' .main_id').val('');

	attribute2_row++;
}
//--></script>

<script type="text/javascript"><!--
var attribute3_row = <?php echo $attribute3_row; ?>;

function addAttribute3() {
	
	var row = $('#attribute3-row'+(attribute3_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute3-row' + attribute3_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[3]['+(attribute3_row-1)+']','calculator[3][' + attribute3_row + ']');
	}
	
	$('#attribute3 tbody').append(html);
	
	$('#attribute3-row' + attribute3_row + ' .main_id').val('');

	attribute3_row++;
}
//--></script>


<script type="text/javascript"><!--
var attribute4_row = <?php echo $attribute4_row; ?>;

function addAttribute4() {
	
	var row = $('#attribute4-row'+(attribute4_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute4-row' + attribute4_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[4]['+(attribute4_row-1)+']','calculator[4][' + attribute4_row + ']');
	}
	
	$('#attribute4 tbody').append(html);
	
	$('#attribute4-row' + attribute4_row + ' .main_id').val('');

	attribute4_row++;
}
//--></script>

<script type="text/javascript"><!--
var attribute5_row = <?php echo $attribute5_row; ?>;

function addAttribute5() {
	
	var row = $('#attribute5-row'+(attribute5_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute5-row' + attribute5_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[5]['+(attribute5_row-1)+']','calculator[5][' + attribute5_row + ']');
	}
	
	$('#attribute5 tbody').append(html);
	
	$('#attribute5-row' + attribute5_row + ' .main_id').val('');

	attribute5_row++;
}
//--></script>

<script type="text/javascript"><!--
var attribute6_row = <?php echo $attribute6_row; ?>;

function addAttribute6() {
	
	var row = $('#attribute6-row'+(attribute6_row-1)).html();
	
	console.log(row);
	
    html  = '<tr id="attribute6-row' + attribute6_row + '">';
	html += row;
	html += '</tr>';

	for(var i=1; i<20; i++){
		html = html.replace('calculator[6]['+(attribute6_row-1)+']','calculator[6][' + attribute6_row + ']');
	}
	
	$('#attribute6 tbody').append(html);
	
	$('#attribute6-row' + attribute6_row + ' .main_id').val('');

	attribute6_row++;
}
//--></script>




</div>
<?php echo $footer; ?>

