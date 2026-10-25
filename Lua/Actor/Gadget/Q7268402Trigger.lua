require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7268402Trigger = class("Q7268402Trigger", GadgetActorProxy)
Q7268402Trigger.defaultAlias = "Q7268402Trigger"
local Q72684ClientConfig = require("Quest/Client/Q72684ClientConfig")

local subIDs = Q72684ClientConfig.SubIDs
local npcs = Q72684ClientConfig.Npcs
local datas = Q72684ClientConfig.Datas

function Q7268402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7268402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(41.48471, 26.59109, 24.32108, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7268402Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72684")
    actor:StopNarrator()
    actor:ClearNarratorTask()
    actor:CallDelay(0.7, function(arg1)
        actorMgr:GetActor("72684"):NarratorOnlyTaskByData(datas.NarratorWithId7268402, function(arg1)
            actorUtils.FinishQuestID(false, 7268402)
        end, 72684)
    end)

    self:DestroySelf()
end

function Q7268402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7268402Trigger
