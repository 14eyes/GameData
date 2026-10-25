require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302803Trigger = class("Q2302803Trigger", GadgetActorProxy)
Q2302803Trigger.defaultAlias = "Q2302803Trigger"
local Q23028ClientConfig = require("Quest/Client/Q23028ClientConfig")

local subIDs = Q23028ClientConfig.SubIDs
local npcs = Q23028ClientConfig.Npcs
local gadgets = Q23028ClientConfig.Gadgets
local datas = Q23028ClientConfig.Datas

function Q2302803Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302803Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302803Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302803)
    self:DestroySelf()
end

function Q2302803Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302803Trigger
