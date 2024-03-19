
$("ul").each( function(){
    let listitems = $(this).children();
    listitems.each(function(index){
        let letter = String.fromCharCode(97 + index);
        $(this).text(letter +") " + $(this).text());
    })
    
})
$(".question").each(function(index) {
    // Find the first <p> element within this .question div
    let firstP = $(this).find("p:first");
    // Prepend numbering. Add 1 to index because index is 0-based and you probably want to start from "1)"
    firstP.text((index + 1) + ") " + firstP.text());
});
