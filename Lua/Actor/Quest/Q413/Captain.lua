require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Captain = class("Captain", NpcActorProxy)
Captain.defaultAlias = "Captain"
local captainData = require("Actor/Quest/Q413/Q413Config").CaptainData

function Captain:PreGetAlias()
    return captainData.Captain
end

function Captain:OnPostDataPrepare() end
function Captain:Start() end
function Captain:OnDestroy() end
return Captain
