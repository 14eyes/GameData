require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40026Trigger = class("Q40026Trigger", GadgetActorProxy)
Q40026Trigger.defaultAlias = "Q40026Trigger"
local Q40026ClientConfig = require("Quest/Client/Q40026ClientConfig")

local subIDs = Q40026ClientConfig.SubIDs
local npcs = Q40026ClientConfig.Npcs
local gadgets = Q40026ClientConfig.Gadgets
local datas = Q40026ClientConfig.Datas

function Q40026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40026Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40026"):FinishQuestID(false, 4002601)
    self:DestroySelf()
end

function Q40026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40026Trigger
