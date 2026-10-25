require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300016Trigger = class("Q1300016Trigger", GadgetActorProxy)
Q1300016Trigger.defaultAlias = "Q1300016Trigger"
local Q13000ClientConfig = require("Quest/Client/Q13000ClientConfig")

local subIDs = Q13000ClientConfig.SubIDs
local npcs = Q13000ClientConfig.Npcs
local datas = Q13000ClientConfig.Datas

function Q1300016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300016Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13000"):RequestInteraction(npcs.Npc1051Data.alias)
    self:DestroySelf()
end

function Q1300016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300016Trigger
