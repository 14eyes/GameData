require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Classroom10 = class("Q74195Classroom10", GadgetActorProxy)
Q74195Classroom10.defaultAlias = "Q74195Classroom10"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195Classroom10:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom10] OnPostDataPrepare")
    this = self
end

function Q74195Classroom10:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Classroom10] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 14.50078, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Classroom10:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom10] TriggerIn")
    actorUtils.FinishQuestID(false, 7419506)
    this:DestroySelf()
end

function Q74195Classroom10:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom10] PreTriggerIn")
end

function Q74195Classroom10:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Classroom10] LightUpTriggerIn")
end

function Q74195Classroom10:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Classroom10] TriggerOut")
end

return Q74195Classroom10
