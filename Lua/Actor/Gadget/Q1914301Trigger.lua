require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914301Trigger = class("Q1914301Trigger", GadgetActorProxy)
Q1914301Trigger.defaultAlias = "Q1914301Trigger"
local Q19143ClientConfig = require("Quest/Client/Q19143ClientConfig")

local subIDs = Q19143ClientConfig.SubIDs
local npcs = Q19143ClientConfig.Npcs
local datas = Q19143ClientConfig.Datas

function Q1914301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914301Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19143")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 19143)
    actor:CallDelay(5, function(arg1)
        arg1:CreateSpeechBubbleTask(npcs.Npc3038Data.id, 191439909, 3, true, 8, 9, true)
        actorMgr:GetActor("19143"):CallDelay(5, function(arg1)
            arg1:CreateSpeechBubbleTask(npcs.Npc12540Data.id, 191439906, 3, true, 8, 9, true)
        end)
    end)

    self:DestroySelf()
end

function Q1914301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914301Trigger
