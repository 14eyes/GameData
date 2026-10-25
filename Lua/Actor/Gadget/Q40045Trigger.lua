require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40045Trigger = class("Q40045Trigger", GadgetActorProxy)
Q40045Trigger.defaultAlias = "Q40045Trigger"
local Q40045ClientConfig = require("Quest/Client/Q40045ClientConfig")

local subIDs = Q40045ClientConfig.SubIDs
local npcs = Q40045ClientConfig.Npcs

function Q40045Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40045Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40045Trigger:TriggerIn()
    print("TriggerIn")
end

function Q40045Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40045"):FinishQuestID(false, 4004501)
    self:DestroySelf()
end

return Q40045Trigger
