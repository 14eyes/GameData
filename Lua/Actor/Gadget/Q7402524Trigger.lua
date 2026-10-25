require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402524Trigger = class("Q7402524Trigger", GadgetActorProxy)
Q7402524Trigger.defaultAlias = "Q7402524Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402524Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402524Trigger] OnPostDataPrepare")
    this = self
end

function Q7402524Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402524Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 13, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402524Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402524Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402524)
    this:DestroySelf()
end

function Q7402524Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402524Trigger] PreTriggerIn")
end

function Q7402524Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402524Trigger] LightUpTriggerIn")
end

function Q7402524Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402524Trigger] TriggerOut")
end

return Q7402524Trigger
