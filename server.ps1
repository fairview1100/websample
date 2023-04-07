Start-PodeServer -ScriptBlock {
    add-PodeEndPoint - Address All -Port 80 -Protocol Http

    Add-PodeRoute -Method Get -Path / -ScriptBlock {       
    }
}