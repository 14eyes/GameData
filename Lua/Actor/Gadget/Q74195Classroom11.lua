require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Classroom11 = class("Q74195Classroom11", GadgetActorProxy)
Q74195Classroom11.defaultAlias = "Q74195Classroom11"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195Classroom11:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom11] OnPostDataPrepare")
    this = self
end

function Q74195Classroom11:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom11] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(7.440507, 10, 11.86171, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Classroom11:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom11] TriggerIn")
    actorUtils.FinishQuestID(false, 7419516)
    this:DestroySelf()
end

function Q74195Classroom11:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom11] PreTriggerIn")
end

function Q74195Classroom11:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom11] LightUpTriggerIn")
end

function Q74195Classroom11:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Classroom11] TriggerOut")
end

return Q74195Classroom11
