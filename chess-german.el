;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; German translation of the chess.el message catalog
;;

(require 'chess-message)

(chess-message-catalog 'german
  '((queen	            . "Dame")
    (king	            . "K�nig")
    (bishop	            . "L�ufer")
    (knight	            . "Springer")
    (rook	            . "Turm")
    (pawn	            . "Bauer")
    (short-castle           . "Kurze Rochade")
    (long-castle            . "Lange Rochade")
    (check	            . "Schach")
    (checkmate	            . "Schach matt")
    (stalemate	            . "Patt")
    (en-passant	            . "on possont")
    (piece-moves            . "%s nach %s")
    (piece-takes            . "%s schl�gt %s auf %s")

    (knight-1-done	    . "Goal: take all the pawns, without letting the queen take your knight")
    (congratulations	    . "Congratulations!")
    (queen-would-take	    . "Die Dame w�rde deinen Springer schlagen!")
    (end-of-puzzles	    . "Es gibt keine weiteren Puzzles in dieser Sammlung")
    (bad-game-read	    . "Error reading game at position %d")
    (irc-challenge	    . "IRC nick of user to challenge: ")
    (irc-waiting	    . "Now waiting for 'name USER' via /msg, or `M-x chess-irc-engage'")
    (irc-logging-in	    . "Connected, now logging in as '%s'...")
    (irc-connecting	    . "Verbindungsaufbau mit IRC server '%s:%d'...")
    (opponent-says	    . "Dein Gegner sagt: %s")
    (challenge-whom	    . "Wehn willst du herausfordern? ")
    (ics-connected	    . "Verbindungsaufbau mit Internet Chess Server '%s'...done")
    (ics-connecting	    . "Verbindungsaufbau mit Internet Chess Server '%s'...")
    (ics-server-prompt	    . "Connect to chess server: ")
    (network-connected	    . "You have connected; pass now or make your move.")
    (network-waiting	    . "Now waiting for your opponent to connect...")
    (network-starting	    . "Starting network client/server...")
    (illegal-move	    . "Illegal move")
    (draw-offer-declined    . "Your draw offer was declined")
    (could-not-find-engine  . "Cannot find %s executable; check `%s'")
    (starting-engine-done   . "Starting chess program '%s'...done")
    (starting-engine	    . "Starting chess program '%s'...")
    (chess-disable-autosave . "Disable autosaving for this game? ")
    (chess-delete-autosave  . "Delete the autosave file? ")
    (chess-read-autosave    . "There is a chess autosave file, read it? ")
    (piece-images-loaded    . "Loading chess piece images...done")
    (piece-images-loading   . "Loading chess piece images...")
    (redrawing-frame-done   . "Redrawing chess display with different size...done")
    (redrawing-frame	    . "Redrawing chess display with different size...")
    (no-images		    . "Cannot find any piece images; check `chess-images-directory'")
    (no-images-fallback     . "Could not find any suitable or properly sized chess images")
    (no-engines-found	    . "Could not find any chess engines to play against; install gnuchess!")
    (engine-not-running     . "The engine you were using is no longer running")
    (failed-start	    . "Failed to start chess engine process")
    (opp-illegal	    . "Your opponent states your last command was illegal")
    (opp-undo-ret	    . "Your opponent has retracted their request to undo %d moves")
    (opp-abort-ret	    . "Your opponent has retracted their offer to abort")
    (opp-draw-ret	    . "Your opponent has retracted their draw offer")
    (opp-undo-dec	    . "Your request to undo %d moves was decline")
    (opp-abort-dec	    . "Your offer to abort was declined")
    (opp-draw-dec	    . "Your draw offer was declined")
    (opp-undo-acc	    . "Request to undo %d moves was accepted")
    (opp-abort-acc	    . "Your offer to abort was accepted")
    (opp-draw-acc	    . "Dein Remie Angebot wurde akzeptiert")
    (opp-ready-a	    . "Dein Anonymer Gegner ist nun bereit zu spielen")
    (opp-ready		    . "%s ist nun bereits zu spielen")
    (opp-undo		    . "Dein Gegner will %d Z�ge zur�ck nehmen, akzeptierst Du? ")
    (opp-abort		    . "Dein Gegner will das Spiel abbrechen, akzeptierst Du? ")
    (opp-draw		    . "Dein Gegner bietet ein Unentschieden an, willst Du annehmen? ")
    (opp-resigned	    . "Dein Gegner hat aufgegeben")
    (opp-quit		    . "Your opponent has quit playing")
    (want-to-play-a	    . "Willst Du eine Partie Schach gegen einen Anonymen Gegner spielen? ")
    (want-to-play	    . "Willst Du eine Partie Schach gegen %s spielen? ")
    (move-passed	    . "Your opponent has passed the move to you")
    (now-black		    . "Dein Gegner hat den ersten Zug gemacht, du bist nun Schwarz")
    (invalid-pgn	    . "Received invalid PGN text")
    (invalid-fen	    . "Received invalid FEN string: %s")
    (piece-immobile	    . "That piece cannot move now")
    (selected-empty	    . "You cannot select an empty square")
    (wrong-color	    . "Du kannst die Figuren deines Gegners nicht bewegen")
    (move-not-legal	    . "That is not a legal move")
    (cannot-mount	    . "You cannot move pieces on top of each other")
    (editing-directly	    . "Now editing position directly, use S when complete...")
    (return-to-current	    . "Use '>' to return to the current position")
    (draw-offer		    . "You offer a draw")
    (want-to-quit	    . "Do you really want to quit? ")
    (illegal-notation	    . "Illegal move notation: %s")
    (san-not-found	    . "Could not find a matching move")
    (cannot-yet-add	    . "Cannot insert moves into a game (yet)")
    (no-such-style	    . "There is no such chessboard display style '%s'")
    (mode-edit		    . "EDIT")
    (mode-drawn		    . "DRAWN")
    (mode-stalemate	    . "STALEMATE")
    (mode-flag-fell	    . "FLAG FELL")
    (mode-resigned	    . "RESIGNED")
    (mode-checkmate	    . "CHECKMATE")
    (mode-start		    . "START")
    (mode-black		    . "Black")
    (mode-white		    . "White")
    (game-is-over	    . "This game is over")
    (not-your-move	    . "It is not your turn to move")
    (no-such-module	    . "There is no module named '%s'")
    (add-to-completed	    . "Cannot add moves to a completed game")
    (undo-limit-reached     . "Cannot undo further")
    (could-not-read-pgn     . "Could not read or find a PGN game")
    (no-such-database	    . "There is no such chess database module '%s'")
    (pgn-parse-error	    . "Error parsing PGN syntax")
    (pgn-read-error	    . "Error reading move: %s")
    (pawn-promote-query     . "Promote pawn to queen/rook/knight/bishop? ")
    (no-candidates	    . "There are no candidate moves for '%s'")
    (could-not-diff	    . "Could not differentiate piece")
    (could-not-clarify	    . "Could not determine which piece to use")
    (clarify-piece	    . "Clarify piece to move by rank or file")
    (piece-unrecognized     . "Unrecognized piece identifier")
    (move-from-blank	    . "Du versuchst eine Figur vom leeren Feld %s zu bewegen")))

(provide 'chess-german)

;;; chess-german.el ends here
