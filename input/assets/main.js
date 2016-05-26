$(function(){

  /* setze überschrift für toc */
  if ($("ul.toc.toc_body").length === 0 && $("h2")[0].innerHTML === "Inhalt") {
    $("h2")[0].remove();
  }

  /* setze überschrift für notes */
  $("div.Notes > h2").text("Anmerkungen");

  /* setze überschrift für bibliographie */
  $("div.bibliogr > h2").text("Bibliographie");

  /* entferne listhead "Bibliographie" */
  $("div.bibliogr > div.listhead").remove();

});
