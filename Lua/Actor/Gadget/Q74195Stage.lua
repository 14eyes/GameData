require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Stage = class("Q74195Stage", GadgetActorProxy)
Q74195Stage.defaultAlias = "Q74195Stage"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195Stage:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Stage] OnPostDataPrepare")
    this = self
end

function Q74195Stage:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Stage] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(55, 35, 17.46289, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Stage:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Stage] TriggerIn")
    actorUtils.FinishQuestID(false, 7419503)
    this:DestroySelf()
end

function Q74195Stage:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Stage] PreTriggerIn")
end

function Q74195Stage:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Stage] LightUpTriggerIn")
end

function Q74195Stage:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Stage] TriggerOut")
end

return Q74195Stage
