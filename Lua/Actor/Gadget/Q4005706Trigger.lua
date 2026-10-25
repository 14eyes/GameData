require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005706Trigger = class("Q4005706Trigger", GadgetActorProxy)
Q4005706Trigger.defaultAlias = "Q4005706Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(4, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40057"):RequestInteraction(npcs.Npc10045Data.alias)
    self:DestroySelf()
end

function Q4005706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005706Trigger
