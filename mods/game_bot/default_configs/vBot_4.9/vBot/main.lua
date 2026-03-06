local version = "4.9"
local currentVersion
local available = false

storage.checkVersion = storage.checkVersion or 0

-- check max once per 12hours
-- if os.time() > storage.checkVersion + (12 * 60 * 60) then

    -- storage.checkVersion = os.time()

    -- HTTP.get("https://raw.githubusercontent.com/Vithrax/vBot/main/vBot/version.txt", function(data, err)
        -- if err then
          -- warn("[vBot updater]: Unable to check version:\n" .. err)
          -- return
        -- end

        -- currentVersion = data
        -- available = true
    -- end)

-- end

UI.Label("vBot v".. version .." \n TNT-Server")
UI.Button("Discord Celo-OT!", function() g_platform.openUrl("https://discord.com/invite/pwSb3NRSgv") end)
UI.Button("Whatsapp Celo-OT!", function() g_platform.openUrl("https://chat.whatsapp.com/F2UCLwgtETT43DQnCpQalK") end)
UI.Button("Instagram Celo-OT!", function() g_platform.openUrl("https://www.instagram.com/https://www.instagram.com/celo_otserver?igsh=c2N2dWkxYmZpbmly") end)
UI.Separator()

-- schedule(5000, function()

    -- if not available then return end
    -- if currentVersion ~= version then

        -- UI.Separator()
        -- UI.Label("New vBot is available for download! v"..currentVersion)
        -- UI.Button("Go to vBot GitHub Page", function() g_platform.openUrl("https://github.com/Vithrax/vBot") end)
        -- UI.Separator()

    -- end

-- end)
