require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905114Trigger = class("Q1905114Trigger", GadgetActorProxy)
Q1905114Trigger.defaultAlias = "Q1905114Trigger"
local Q19051ClientConfig = require("Quest/Client/Q19051ClientConfig")

local subIDs = Q19051ClientConfig.SubIDs
local npcs = Q19051ClientConfig.Npcs
local datas = Q19051ClientConfig.Datas

function Q1905114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905114Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19051"):FinishQuestID(false, 1905114)
    self:DestroySelf()
end

function Q1905114Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905114Trigger
