require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74050Trigger = class("Q74050Trigger", GadgetActorProxy)
Q74050Trigger.defaultAlias = "Q74050Trigger"
local Q74050ClientConfig = require("Quest/Client/Q74050ClientConfig")

local this
local subIDs = Q74050ClientConfig.SubIDs
local npcs = Q74050ClientConfig.Npcs
local datas = Q74050ClientConfig.Datas

function Q74050Trigger:OnPostDataPrepare()
    print("[MainId: 74050][Trigger: Q74050Trigger] OnPostDataPrepare")
    this = self
end

function Q74050Trigger:OnPostComponentPrepare()
    print("[MainId: 74050][Trigger: Q74050Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(7, 9, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74050Trigger:TriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger] TriggerIn")
    actorMgr:GetActor("74050"):RequestInteraction(npcs.Npc20974Data.alias)
    this:DestroySelf()
end

function Q74050Trigger:PreTriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger] PreTriggerIn")
end

function Q74050Trigger:LightUpTriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger] LightUpTriggerIn")
end

function Q74050Trigger:TriggerOut()
    print("[MainId: 74050][Trigger: Q74050Trigger] TriggerOut")
end

return Q74050Trigger
