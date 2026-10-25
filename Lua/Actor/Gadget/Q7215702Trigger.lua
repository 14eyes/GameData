require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215702Trigger = class("Q7215702Trigger", GadgetActorProxy)
Q7215702Trigger.defaultAlias = "Q7215702Trigger"
local Q72157ClientConfig = require("Quest/Client/Q72157ClientConfig")

local subIDs = Q72157ClientConfig.SubIDs
local npcs = Q72157ClientConfig.Npcs
local datas = Q72157ClientConfig.Datas

function Q7215702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215702Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72157"):FinishQuestID(false, 7215702)
    self:DestroySelf()
end

function Q7215702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215702Trigger
