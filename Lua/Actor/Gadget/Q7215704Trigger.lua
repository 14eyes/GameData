require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215704Trigger = class("Q7215704Trigger", GadgetActorProxy)
Q7215704Trigger.defaultAlias = "Q7215704Trigger"
local Q72157ClientConfig = require("Quest/Client/Q72157ClientConfig")

local subIDs = Q72157ClientConfig.SubIDs
local npcs = Q72157ClientConfig.Npcs
local datas = Q72157ClientConfig.Datas

function Q7215704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215704Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72157"):FinishQuestID(false, 7215704)
    self:DestroySelf()
end

function Q7215704Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215704Trigger
