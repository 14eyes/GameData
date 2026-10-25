require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302102Trigger = class("Q2302102Trigger", GadgetActorProxy)
Q2302102Trigger.defaultAlias = "Q2302102Trigger"
local Q23021ClientConfig = require("Quest/Client/Q23021ClientConfig")

local subIDs = Q23021ClientConfig.SubIDs
local npcs = Q23021ClientConfig.Npcs
local datas = Q23021ClientConfig.Datas

function Q2302102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302102Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302102)
    self:DestroySelf()
end

function Q2302102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302102Trigger
