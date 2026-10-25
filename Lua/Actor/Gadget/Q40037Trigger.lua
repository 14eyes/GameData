require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger = class("Q40037Trigger", GadgetActorProxy)
Q40037Trigger.defaultAlias = "Q40037Trigger"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40037"):FinishQuestID(false, 4003703)
    self:DestroySelf()
end

function Q40037Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40037Trigger
