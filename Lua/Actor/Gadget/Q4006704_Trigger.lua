require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006704_Trigger = class("Q4006704_Trigger", GadgetActorProxy)
Q4006704_Trigger.defaultAlias = "Q4006704_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006704_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006704_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(30.12494, 26.31862, 18.11005, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006704_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):NarratorOnlyTaskByData(datas.Narrator_4006701, function(arg1)
        actorUtils.FinishQuestID(false, 4006704)
    end, 40067)

    self:DestroySelf()
end

function Q4006704_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006704_Trigger
