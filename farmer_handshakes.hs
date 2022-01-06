main = print (getParticipants 0 0 7000)

getParticipants :: Int -> Int -> Int -> Int
getParticipants farmers shakes_count handshakes 
    | shakes_count >= handshakes = farmers
    | otherwise = getParticipants (farmers + 1) (shakes_count + farmers) handshakes