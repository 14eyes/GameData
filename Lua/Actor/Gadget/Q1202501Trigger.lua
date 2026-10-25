require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202501Trigger = class("Q1202501Trigger", GadgetActorProxy)
Q1202501Trigger.defaultAlias = "Q1202501Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202501)
    self:DestroySelf()
end

function Q1202501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202501Trigger
