require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19146Trigger = class("Q19146Trigger", GadgetActorProxy)
Q19146Trigger.defaultAlias = "Q19146Trigger"
local Q19146ClientConfig = require("Quest/Client/Q19146ClientConfig")

local subIDs = Q19146ClientConfig.SubIDs
local npcs = Q19146ClientConfig.Npcs
local datas = Q19146ClientConfig.Datas

function Q19146Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19146Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19146Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19146"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19146")
        actor:CreateQuestNpcById(1914605, npcs.Coop_ShinobuData.id, 1)
        actor:CreateQuestNpcById(1914605, npcs.Npc12530Data.id, 2)
        actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19146Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19146Trigger
