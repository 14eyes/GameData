require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40035Trigger = class("Q40035Trigger", GadgetActorProxy)
Q40035Trigger.defaultAlias = "Q40035Trigger"
local Q40035ClientConfig = require("Quest/Client/Q40035ClientConfig")

local subIDs = Q40035ClientConfig.SubIDs
local npcs = Q40035ClientConfig.Npcs
local datas = Q40035ClientConfig.Datas

function Q40035Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40035Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(85, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40035Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40035"):FinishQuestID(false, 4003501)
    self:DestroySelf()
end

function Q40035Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40035Trigger
