require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215808Trigger = class("Q7215808Trigger", GadgetActorProxy)
Q7215808Trigger.defaultAlias = "Q7215808Trigger"
local Q72158ClientConfig = require("Quest/Client/Q72158ClientConfig")

local subIDs = Q72158ClientConfig.SubIDs
local npcs = Q72158ClientConfig.Npcs
local datas = Q72158ClientConfig.Datas

function Q7215808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215808Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72158"):FinishQuestID(false, 7215808)
    self:DestroySelf()
end

function Q7215808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215808Trigger
