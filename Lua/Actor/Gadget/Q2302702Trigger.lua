require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302702Trigger = class("Q2302702Trigger", GadgetActorProxy)
Q2302702Trigger.defaultAlias = "Q2302702Trigger"
local Q23027ClientConfig = require("Quest/Client/Q23027ClientConfig")

local subIDs = Q23027ClientConfig.SubIDs
local npcs = Q23027ClientConfig.Npcs
local datas = Q23027ClientConfig.Datas

function Q2302702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302702Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2302702)
    self:DestroySelf()
end

function Q2302702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302702Trigger
