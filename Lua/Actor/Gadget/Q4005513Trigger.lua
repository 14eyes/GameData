require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005513Trigger = class("Q4005513Trigger", GadgetActorProxy)
Q4005513Trigger.defaultAlias = "Q4005513Trigger"
local Q40055ClientConfig = require("Quest/Client/Q40055ClientConfig")

local subIDs = Q40055ClientConfig.SubIDs
local npcs = Q40055ClientConfig.Npcs
local datas = Q40055ClientConfig.Datas

function Q4005513Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005513Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005513Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40055"):RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q4005513Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005513Trigger
