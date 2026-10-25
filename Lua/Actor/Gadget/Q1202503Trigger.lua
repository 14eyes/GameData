require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202503Trigger = class("Q1202503Trigger", GadgetActorProxy)
Q1202503Trigger.defaultAlias = "Q1202503Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202503)
    self:DestroySelf()
end

function Q1202503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202503Trigger
