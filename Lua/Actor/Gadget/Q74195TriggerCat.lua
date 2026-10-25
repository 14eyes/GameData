require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195TriggerCat = class("Q74195TriggerCat", GadgetActorProxy)
Q74195TriggerCat.defaultAlias = "Q74195TriggerCat"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195TriggerCat:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] OnPostDataPrepare")
    this = self
end

function Q74195TriggerCat:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 12, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195TriggerCat:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] TriggerIn")
    actorUtils.FinishQuestID(false, 7419517)
    this:DestroySelf()
end

function Q74195TriggerCat:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] PreTriggerIn")
end

function Q74195TriggerCat:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] LightUpTriggerIn")
end

function Q74195TriggerCat:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195TriggerCat] TriggerOut")
end

return Q74195TriggerCat
