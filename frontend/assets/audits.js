$(function() {
  var $auditButton = $("#audit_button");
  var $auditResults = $("#audit_results");

  $auditButton.on("click", function() {
    $auditButton.attr("disabled", "disabled").addClass("disabled");
    $auditResults.empty();
    $auditResults.append(AS.renderTemplate("audit_loading"));
  });
})
