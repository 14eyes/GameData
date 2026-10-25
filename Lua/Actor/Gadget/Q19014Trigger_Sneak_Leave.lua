require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19014Trigger_Sneak_Leave = class("Q19014Trigger_Sneak_Leave", GadgetActorProxy)
Q19014Trigger_Sneak_Leave.defaultAlias = "Q19014Trigger_Sneak_Leave"
local Q19014ClientConfig = require("Quest/Client/Q19014ClientConfig")

local subIDs = Q19014ClientConfig.SubIDs
local npcs = Q19014ClientConfig.Npcs
local datas = Q19014ClientConfig.Datas

function Q19014Trigger_Sneak_Leave:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19014Trigger_Sneak_Leave:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(42, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19014Trigger_Sneak_Leave:TriggerIn()
    print("TriggerIn")
end

function Q19014Trigger_Sneak_Leave:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("19014")
    actor:SetQuestVar(1901406, 0, 1)
    globalActor:EnablePlayerInput(true)
    actor:FinishQuestID(true, 1901406)
    self:DestroySelf()
end

return Q19014Trigger_Sneak_Leave
