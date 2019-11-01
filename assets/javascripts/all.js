$(function () {
  $(".c-project__image").click(function() {
    $("#modal").attr('aria-hidden', 'false');
    $("#modal-image").attr("src", this.src);
    $("#modal-image").attr("alt", this.alt);
    $('html').css("overflow", "hidden");
  });

// When the user clicks on <span> (x), close the modal
  $("#modal-close").click(function () {
    $("#modal").attr('aria-hidden', 'true');
    $('html').css("overflow", "");
  });
  $("#modal").click(function () {
    $("#modal").attr('aria-hidden', 'true');
    $('html').css("overflow", "");
  });
});