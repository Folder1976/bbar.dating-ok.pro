<div class="panel panel-default">
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <div class="filter-block">
    <h3 class="title js-dropdown-filter open"><?php echo $filter_group['name']; ?></h3>
      <div class="list categories dropdown-filter open">
        <div class="list-group-item">
          <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
            <?php foreach ($filter_group['filter'] as $filter) { ?>
            <div class="checkbox">
              <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
              <input type="checkbox" id="filter_<?php echo $filter['filter_id']; ?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
              <?php } else { ?>
              <input type="checkbox" id="filter_<?php echo $filter['filter_id']; ?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
              <?php } ?>
              <label class="checkbox-label" for="filter_<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-center">
    <button type="button" id="button-filter" class="g-btn"><?php echo $button_filter; ?></button>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
