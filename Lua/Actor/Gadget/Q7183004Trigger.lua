require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7183004Trigger = class("Q7183004Trigger", GadgetActorProxy)
Q7183004Trigger.defaultAlias = "Q7183004Trigger"
local Q71830ClientConfig = require("Quest/Client/Q71830ClientConfig")

local subIDs = Q71830ClientConfig.SubIDs
local npcs = Q71830ClientConfig.Npcs
local datas = Q71830ClientConfig.Datas

function Q7183004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7183004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7183004Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71830"):ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("71830")
        actor:CreateQuestNpcById(7183004, npcs.Npc12386Data.id, 2)
        actor:CreateQuestNpcById(7183004, npcs.Npc12329Data.id, 1)
        actor:RequestInteraction(npcs.Npc12329Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q7183004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7183004Trigger
