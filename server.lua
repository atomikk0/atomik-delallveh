local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        Wait(1740000) -- 30 * 1000 * 60 - 60000
        TriggerClientEvent("txcl:showAnnouncement", -1, "1 dakika sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(30000)
        TriggerClientEvent("txcl:showAnnouncement",-1,"30 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
        Wait(30000)
        TriggerClientEvent("atmk:delallveh", -1)
        TriggerClientEvent("txcl:showAnnouncement",-1, "Sahipsiz tüm araçlar çekilmiştir!", "Sistem")
    end
end)


QBCore.Commands.Add('dvall', "Tüm sahipsiz araçları çeker (30 saniye)", {}, true, function(source, args)
    TriggerClientEvent("txcl:showAnnouncement",-1,"30 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
    Wait(15000)
    TriggerClientEvent("txcl:showAnnouncement",-1,"15 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
    Wait(12000)
    TriggerClientEvent("txcl:showAnnouncement",-1,"3 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
    Wait(1000)
    TriggerClientEvent("txcl:showAnnouncement",-1, "2 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
    Wait(1000)
    TriggerClientEvent("txcl:showAnnouncement",-1, "1 saniye sonra sahipsiz araçlar çekilecektir!", "Sistem")
    Wait(1000)
    TriggerClientEvent("atmk:delallveh", -1)
    TriggerClientEvent("txcl:showAnnouncement", -1,"Sahipsiz tüm araçlar çekilmiştir!", "Sistem")
end, 'admin')