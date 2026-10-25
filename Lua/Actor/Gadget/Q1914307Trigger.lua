require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914307Trigger = class("Q1914307Trigger", GadgetActorProxy)
Q1914307Trigger.defaultAlias = "Q1914307Trigger"
local Q19143ClientConfig = require("Quest/Client/Q19143ClientConfig")

local subIDs = Q19143ClientConfig.SubIDs
local npcs = Q19143ClientConfig.Npcs
local datas = Q19143ClientConfig.Datas

function Q1914307Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914307Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914307Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19143"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19143")
        actor:CreateQuestNpcById(1914307, npcs.Coop_ShinobuData.id, 1)
        actor:CreateQuestNpcById(1914307, npcs.Npc12277Data.id, 2)
        actor:CreateQuestNpcById(1914307, npcs.Npc12278Data.id, 3)
        actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1914307Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914307Trigger
