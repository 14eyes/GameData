require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Classroom1 = class("Q74195Classroom1", GadgetActorProxy)
Q74195Classroom1.defaultAlias = "Q74195Classroom1"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195Classroom1:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom1] OnPostDataPrepare")
    this = self
end

function Q74195Classroom1:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(11.58939, 12.23603, 10.08117, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Classroom1:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom1] TriggerIn")
    actorUtils.FinishQuestID(false, 7419501)
    this:DestroySelf()
end

function Q74195Classroom1:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom1] PreTriggerIn")
end

function Q74195Classroom1:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom1] LightUpTriggerIn")
end

function Q74195Classroom1:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Classroom1] TriggerOut")
end

return Q74195Classroom1
