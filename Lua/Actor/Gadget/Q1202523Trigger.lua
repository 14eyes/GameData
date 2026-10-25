require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202523Trigger = class("Q1202523Trigger", GadgetActorProxy)
Q1202523Trigger.defaultAlias = "Q1202523Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202523Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202523Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(24, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202523Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202523)
    self:DestroySelf()
end

function Q1202523Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202523Trigger
