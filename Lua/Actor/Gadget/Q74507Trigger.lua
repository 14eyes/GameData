require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74507Trigger = class("Q74507Trigger", GadgetActorProxy)
Q74507Trigger.defaultAlias = "Q74507Trigger"
local Q74507ClientConfig = require("Quest/Client/Q74507ClientConfig")

local this
local subIDs = Q74507ClientConfig.SubIDs
local npcs = Q74507ClientConfig.Npcs

function Q74507Trigger:OnPostDataPrepare()
    print("[MainId: 74507][Trigger: Q74507Trigger] OnPostDataPrepare")
    this = self
end

function Q74507Trigger:OnPostComponentPrepare()
    print("[MainId: 74507][Trigger: Q74507Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15.97246, 22.2, 5.520588, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74507Trigger:TriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger] TriggerIn")
    actorMgr:GetActor("74507"):RequestInteraction(npcs.Npc30419Data.alias, "", true)
    this:DestroySelf()
end

function Q74507Trigger:PreTriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger] PreTriggerIn")
end

function Q74507Trigger:LightUpTriggerIn()
    print("[MainId: 74507][Trigger: Q74507Trigger] LightUpTriggerIn")
end

function Q74507Trigger:TriggerOut()
    print("[MainId: 74507][Trigger: Q74507Trigger] TriggerOut")
end

return Q74507Trigger
