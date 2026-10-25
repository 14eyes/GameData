require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402801Trigger = class("Q7402801Trigger", GadgetActorProxy)
Q7402801Trigger.defaultAlias = "Q7402801Trigger"
local Q74028ClientConfig = require("Quest/Client/Q74028ClientConfig")

local this
local subIDs = Q74028ClientConfig.SubIDs
local npcs = Q74028ClientConfig.Npcs
local points = Q74028ClientConfig.Points
local datas = Q74028ClientConfig.Datas

function Q7402801Trigger:OnPostDataPrepare()
    print("[MainId: 74028][Trigger: Q7402801Trigger] OnPostDataPrepare")
    this = self
end

function Q7402801Trigger:OnPostComponentPrepare()
    print("[MainId: 74028][Trigger: Q7402801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402801Trigger:TriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402801)
    this:DestroySelf()
end

function Q7402801Trigger:PreTriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger] PreTriggerIn")
end

function Q7402801Trigger:LightUpTriggerIn()
    print("[MainId: 74028][Trigger: Q7402801Trigger] LightUpTriggerIn")
end

function Q7402801Trigger:TriggerOut()
    print("[MainId: 74028][Trigger: Q7402801Trigger] TriggerOut")
end

return Q7402801Trigger
