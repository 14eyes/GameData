require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007212_Trigger = class("Q4007212_Trigger", GadgetActorProxy)
Q4007212_Trigger.defaultAlias = "Q4007212_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007212_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007212_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007212_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40072"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("40072"):NarratorOnlyTaskByData(datas.Narrator_4007206, function(arg1)
            actorUtils.FinishQuestID(false, 4007212)
        end, 40072)
    end)

    self:DestroySelf()
end

function Q4007212_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007212_Trigger
