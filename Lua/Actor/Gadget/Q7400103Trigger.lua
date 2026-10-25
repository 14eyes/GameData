require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400103Trigger = class("Q7400103Trigger", GadgetActorProxy)
Q7400103Trigger.defaultAlias = "Q7400103Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400103Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400103Trigger] OnPostDataPrepare")
    this = self
end

function Q7400103Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400103Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400103)
    this:DestroySelf()
end

function Q7400103Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400103Trigger] PreTriggerIn")
end

function Q7400103Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400103Trigger] LightUpTriggerIn")
end

function Q7400103Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400103Trigger] TriggerOut")
end

return Q7400103Trigger
