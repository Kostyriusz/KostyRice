function wifi-connect
    # Pokazuje listę dostępnych sieci
    echo "Skanowanie sieci..."
    iwctl station wlan0 scan
    sleep 2
    iwctl station wlan0 get-networks

    # Pyta o nazwę sieci
    read -P "Podaj nazwę sieci (SSID): " ssid

    # Łączy się z podaną siecią (iwctl sam zapyta o hasło jeśli trzeba)
    iwctl station wlan0 connect "$ssid"

    # Pokazuje status na koniec
    echo "Status połączenia:"
    iwctl station wlan0 show
end