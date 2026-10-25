require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70508Trigger = class("Q70508Trigger", GadgetActorProxy)
Q70508Trigger.defaultAlias = "Q70508Trigger"
local Q70508ClientConfig = require("Quest/Client/Q70508ClientConfig")

local subIDs = Q70508ClientConfig.SubIDs
local npcs = Q70508ClientConfig.Npcs
local gadgets = Q70508ClientConfig.Gadgets

function Q70508Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70508Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70508Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70508"):FinishQuestID(false, 7050801)
    self:DestroySelf()
end

function Q70508Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70508Trigger
