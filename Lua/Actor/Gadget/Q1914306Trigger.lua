require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914306Trigger = class("Q1914306Trigger", GadgetActorProxy)
Q1914306Trigger.defaultAlias = "Q1914306Trigger"
local Q19143ClientConfig = require("Quest/Client/Q19143ClientConfig")

local subIDs = Q19143ClientConfig.SubIDs
local npcs = Q19143ClientConfig.Npcs
local datas = Q19143ClientConfig.Datas

function Q1914306Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914306Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914306Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19143"):CreateSpeechBubbleTask(npcs.Npc12509Data.id, 191439907, 3, true, 8, 9, true)
    actorMgr:GetActor("19143"):CallDelay(5, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc12539Data.id, 191439908, 3, true, 8, 9, true)
    end)

    self:DestroySelf()
end

function Q1914306Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914306Trigger
