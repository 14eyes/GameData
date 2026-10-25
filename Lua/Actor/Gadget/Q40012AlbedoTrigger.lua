require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012AlbedoTrigger = class("Q40012AlbedoTrigger", GadgetActorProxy)
Q40012AlbedoTrigger.defaultAlias = "Q40012AlbedoTrigger"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012AlbedoTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012AlbedoTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012AlbedoTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40012"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40012")
        actor:CreateQuestNpcById(4001204, npcs.Npc1018Data.id, 1)
        actor:RequestInteraction(npcs.Npc1018Data.alias)
    end, nil, nil, "")

    self:DestroySelf()
end

function Q40012AlbedoTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40012AlbedoTrigger
