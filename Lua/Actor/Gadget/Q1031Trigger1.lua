require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1031Trigger1 = class("Q1031Trigger1", GadgetActorProxy)
Q1031Trigger1.defaultAlias = "Q1031Trigger1"
local Q1031ClientConfig = require("Quest/Client/Q1031ClientConfig")

local subIDs = Q1031ClientConfig.SubIDs
local npcs = Q1031ClientConfig.Npcs

function Q1031Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1031Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1031Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1031"):RequestInteraction(npcs.XiaoData.alias)
    self:DestroySelf()
end

function Q1031Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q1031Trigger1
