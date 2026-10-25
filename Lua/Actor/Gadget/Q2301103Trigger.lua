require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2301103Trigger = class("Q2301103Trigger", GadgetActorProxy)
Q2301103Trigger.defaultAlias = "Q2301103Trigger"
local Q23011ClientConfig = require("Quest/Client/Q23011ClientConfig")

local subIDs = Q23011ClientConfig.SubIDs
local npcs = Q23011ClientConfig.Npcs
local datas = Q23011ClientConfig.Datas

function Q2301103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2301103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2301103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2301103)
    self:DestroySelf()
end

function Q2301103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2301103Trigger
