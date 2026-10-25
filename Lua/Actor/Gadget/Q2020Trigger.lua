require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2020Trigger = class("Q2020Trigger", GadgetActorProxy)
Q2020Trigger.defaultAlias = "Q2020Trigger"
local Q2020ClientConfig = require("Quest/Client/Q2020ClientConfig")

local subIDs = Q2020ClientConfig.SubIDs
local npcs = Q2020ClientConfig.Npcs
local gadgets = Q2020ClientConfig.Gadgets
local datas = Q2020ClientConfig.Datas

function Q2020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2020"):FinishQuestID(false, 202001)
    self:DestroySelf()
end

function Q2020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2020Trigger
