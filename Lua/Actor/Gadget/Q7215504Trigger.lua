require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215504Trigger = class("Q7215504Trigger", GadgetActorProxy)
Q7215504Trigger.defaultAlias = "Q7215504Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function Q7215504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72155"):FinishQuestID(false, 7215504)
    self:DestroySelf()
end

function Q7215504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215504Trigger
