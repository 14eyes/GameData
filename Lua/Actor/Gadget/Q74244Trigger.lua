require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74244Trigger = class("Q74244Trigger", GadgetActorProxy)
Q74244Trigger.defaultAlias = "Q74244Trigger"
local Q74244ClientConfig = require("Quest/Client/Q74244ClientConfig")

local this
local subIDs = Q74244ClientConfig.SubIDs

function Q74244Trigger:OnPostDataPrepare()
    print("[MainId: 74244][Trigger: Q74244Trigger] OnPostDataPrepare")
    this = self
end

function Q74244Trigger:OnPostComponentPrepare()
    print("[MainId: 74244][Trigger: Q74244Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(35, 35, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74244)
end

function Q74244Trigger:TriggerIn()
    print("[MainId: 74244][Trigger: Q74244Trigger] TriggerIn")
    actorMgr:GetActor("74244"):TransmitPlayerByQuestId(7424401, 1)
end

function Q74244Trigger:PreTriggerIn()
    print("[MainId: 74244][Trigger: Q74244Trigger] PreTriggerIn")
end

function Q74244Trigger:LightUpTriggerIn()
    print("[MainId: 74244][Trigger: Q74244Trigger] LightUpTriggerIn")
end

function Q74244Trigger:TriggerOut()
    print("[MainId: 74244][Trigger: Q74244Trigger] TriggerOut")
end

return Q74244Trigger
