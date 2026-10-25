require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202519Trigger = class("Q1202519Trigger", GadgetActorProxy)
Q1202519Trigger.defaultAlias = "Q1202519Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202519Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202519Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202519Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1202519Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12025"):FinishQuestID(true, 1202519)
    self:DestroySelf()
end

return Q1202519Trigger
