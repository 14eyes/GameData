require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202522Trigger = class("Q1202522Trigger", GadgetActorProxy)
Q1202522Trigger.defaultAlias = "Q1202522Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202522Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202522Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202522Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202522)
    self:DestroySelf()
end

function Q1202522Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202522Trigger
