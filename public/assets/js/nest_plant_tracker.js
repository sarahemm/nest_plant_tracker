function updateWateringDaysText() {
  var new_val = $(within_watering_days).val();

  if(new_val == 0) {
    $(watering_days_label).text("Needs water today (or past-due)");
  } else if(new_val == 1) {
    $(watering_days_label).text("Needs water today or tomorrow (or past-due)");
  } else {
    $(watering_days_label).text("Within " + new_val + " days of needing water (or past-due)");
  }
}

function updateNotCheckedInText() {
  var new_val = $(not_checked_in).val();

  if(new_val == 0) {
    $(not_checked_in_label).text("no matter when they were last checked");
  } else if(new_val == 1) {
    $(not_checked_in_label).text("and hasn't been checked today");
  } else if(new_val == 2) {
    $(not_checked_in_label).text("and hasn't been checked yesterday or today");
  } else {
    $(not_checked_in_label).text("and hasn't been checked in the last " + new_val + " days");
  }
}

function readyRenameLocation(name, id) {
  $('#renameTitle').text("Rename " + name);
  $('#newName')[0].value = name;
  $('#locationId')[0].value = id;
}

function readyRenameFert(name, id) {
  $('#renameTitle').text("Rename " + name);
  $('#newName')[0].value = name;
  $('#fertId')[0].value = id;
}

function readyRefreqFert(freq, id) {
  $('#newFreq')[0].value = freq;
  $('#fertFreqId')[0].value = id;
}

function showHideFert() {
  // TODO: figure out why this only works if it's backwards
  if($('#fertShowHide').prop('checked')) {
    $('.fertButton').css("visibility", "hidden");
    $('.fertPill').css("visibility", "hidden");
  } else {
    $('.fertButton').css("visibility", "visible");
    $('.fertPill').css("visibility", "visible");
  }
}

function checkWatered(id) {
  // TODO: shouldn't hardcode the ID of "Watered" (3)
  $("#plant" + id + "-btnWater3").attr('checked', true);
}

$( document ).ready(function() {
  updateWateringDaysText();
  updateNotCheckedInText();
  const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
  const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
});

