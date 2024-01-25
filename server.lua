local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        if Config.Announce == "chat" then
            Wait(Config.Time * 1000 * 60 - 60000)
            SendChatMessage(-1, "1 dakika sonra sahipsiz araçlar çekilecektir!")
            Wait(30000)
            SendChatMessage(-1, "30 saniye sonra sahipsiz araçlar çekilecektir!")
            Wait(30000)
            TriggerClientEvent("atmk:delallveh", -1)
            SendChatMessage(-1, "Sahipsiz tüm araçlar çekilmiştir!")
        elseif Config.Announce == "tx" then
            Wait(Config.Time * 1000 * 60 - 60000)
            TriggerClientEvent("txcl:showAnnouncement", -1, "1 dakika sonra sahipsiz araçlar çekilecektir!", "Sistem")
            Wait(30000)
            TriggerClientEvent("txcl:showAnnouncement", -1, "30 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
            Wait(30000)
            TriggerClientEvent("atmk:delallveh", -1)
            TriggerClientEvent("txcl:showAnnouncement", -1, "Sahipsiz tüm araçlar çekilmiştir!", "Sistem")
        end
    end
end)

QBCore.Commands.Add(Config.Command, "Tüm sahipsiz araçları çeker (30 saniye)", {}, true, function(source, args)    
    if Config.Announce == "tx" then
        TriggerClientEvent("txcl:showAnnouncement", -1, "30 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(15000)
        TriggerClientEvent("txcl:showAnnouncement", -1, "15 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(12000)
        TriggerClientEvent("txcl:showAnnouncement", -1, "3 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(1000)
        TriggerClientEvent("txcl:showAnnouncement", -1, "2 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(1000)
        TriggerClientEvent("txcl:showAnnouncement", -1, "1 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(1000)
        TriggerClientEvent("atmk:delallveh", -1)
        TriggerClientEvent("txcl:showAnnouncement", -1, "Sahipsiz tüm araçlar çekilmiştir!", "Sistem")
    elseif Config.Announce == "chat" then
        SendChatMessage(-1, "30 saniye sonra sahipsiz araçlar çekilecektir!")
        Wait(15000)
        SendChatMessage(-1, "15 saniye sonra sahipsiz araçlar çekilecektir!")
        Wait(12000)
        SendChatMessage(-1, "3 saniye sonra sahipsiz araçlar çekilecektir!")
        Wait(1000)
        SendChatMessage(-1, "2 saniye sonra sahipsiz araçlar çekilecektir!")
        Wait(1000)
        SendChatMessage(-1, "1 saniye sonra sahipsiz araçlar çekilecektir!")
        Wait(1000)
        TriggerClientEvent("atmk:delallveh", -1)
        SendChatMessage(-1, "Sahipsiz tüm araçlar çekilmiştir!")
    end
end, 'admin')

function SendChatMessage(targetId, message)
    TriggerClientEvent('chatMessage', -1, 'Sistem', "normal", message)

    -- bu event hata verirse
    -- TriggerClientEvent('chatMessage', -1, 'Sistem', {255, 0, 0}, message)
    -- bunu kullanın
end
