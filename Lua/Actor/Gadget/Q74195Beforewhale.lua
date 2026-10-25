require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Beforewhale = class("Q74195Beforewhale", GadgetActorProxy)
Q74195Beforewhale.defaultAlias = "Q74195Beforewhale"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs
local points = Q74195ClientConfig.Points

function Q74195Beforewhale:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] OnPostDataPrepare")
    this = self
end

function Q74195Beforewhale:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14.33562, 6.990632, 39.31585, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Beforewhale:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] TriggerIn")
    actorUtils.FinishQuestID(false, 7419514)
    this:DestroySelf()
end

function Q74195Beforewhale:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] PreTriggerIn")
end

function Q74195Beforewhale:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] LightUpTriggerIn")
end

function Q74195Beforewhale:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Beforewhale] TriggerOut")
end

return Q74195Beforewhale
