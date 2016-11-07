


// Vorbereitung
$( function() {

	$( ".portfolio-modal .li-page").removeClass( "active ").on( "click tap", function(e) {

		e.preventDefault();
		e.stopPropagation();

		var content = $( this ).closest( ".werkstatt-content" ),
			relation = $( this ).attr( "rel" ),
			target = $( "." + relation, content ),
			iframe = $( "iframe", target );

		if( !$( this ).hasClass( "active" ) ) {
			$( ".li-page", content ).removeClass( "active" );
			$( this ).addClass( "active" );

			$( ".page", content ).fadeOut();
			target.fadeIn();
			iframe.css( "height", iframe.contents().height() + "px" );

			var spielenIframe = $( ".spielen iframe", content )[0];
			if( relation === "spielen" ) {
				spielenIframe.contentWindow.$( "canvas" ).trigger('startProgram');
			} else {
				spielenIframe.contentWindow.$( "canvas" ).trigger('stopProgram');
			}
		}
	});

	$( ".portfolio-modal .li-lesen" ).addClass( "active" );
	$( ".portfolio-modal .page" ).hide();
	$( ".portfolio-modal .lesen" ).show();

	$( ".mixit" ).on( "click tap", function() {
		var iframes = $( "iframe", $( this ).attr( "href" ) );

    	setTimeout(function resizeAll() {

    		$.each( iframes, function( index, iframe ) {
				var $this = $( this ),
					height = $this.contents().outerHeight() + 30;
	    		
	    		$this.css( "height" , height + "px" );    			
    		} )
    	}, 500);	
    } );


	// Stop program after loading (will be started when user clicks on it)
	$( ".portfolio-modal .page iframe").load( function() {
		$( this )[0].contentWindow.$ && $( this )[0].contentWindow.$( "canvas" ).trigger('stopProgram');
	});

/*
	$(".concept-frame").bind("mousewheel", function(e) {
        if(e.originalEvent.wheelDelta / 120 > 0) {
            if
        }
        else{
            $(this).text('scrolling down !');
        }
    });
*/
});
