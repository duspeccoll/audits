$(function() {
  var $auditForm = $("#audit_form");
  var $auditResults = $("#audit_results");

  $auditForm.ajaxForm({
    dataType: "json",
    method: "GET",
    beforeSubmit: function() {
      $(".btn", $auditForm).attr("disabled", "disabled").addClass("disabled");
      $auditResults.empty();
      $auditResults.append(AS.renderTemplate("audit_loading"));
    },
    success: function(json) {
      $(".btn", $auditForm).removeAttr("disabled").removeClass("disabled");
      $auditResults.empty();
      $auditResults.append(AS.renderTemplate("audit_result", {results: json.results}));
    }
  });
})
