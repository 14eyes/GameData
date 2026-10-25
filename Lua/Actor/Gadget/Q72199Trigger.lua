require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72199Trigger = class("Q72199Trigger", GadgetActorProxy)
Q72199Trigger.defaultAlias = "Q72199Trigger"
local Q72199ClientConfig = require("Quest/Client/Q72199ClientConfig")

local subIDs = Q72199ClientConfig.SubIDs
local npcs = Q72199ClientConfig.Npcs
local datas = Q72199ClientConfig.Datas

function Q72199Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72199Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72199Trigger:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q72199ClientConfig.ActorAlias)
    if actor:GetSubQuestState(7219913) == 2 then
        actor:FinishQuestID(false, 7219913)
    end

    self:DestroySelf()
end

function Q72199Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72199Trigger
