require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402503Trigger = class("Q7402503Trigger", GadgetActorProxy)
Q7402503Trigger.defaultAlias = "Q7402503Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402503Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402503Trigger] OnPostDataPrepare")
    this = self
end

function Q7402503Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402503Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 16, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402503Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402503Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402503)
    this:DestroySelf()
end

function Q7402503Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402503Trigger] PreTriggerIn")
end

function Q7402503Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402503Trigger] LightUpTriggerIn")
end

function Q7402503Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402503Trigger] TriggerOut")
end

return Q7402503Trigger
