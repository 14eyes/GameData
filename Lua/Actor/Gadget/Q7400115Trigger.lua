require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400115Trigger = class("Q7400115Trigger", GadgetActorProxy)
Q7400115Trigger.defaultAlias = "Q7400115Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400115Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400115Trigger] OnPostDataPrepare")
    this = self
end

function Q7400115Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400115Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400115Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400115Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400115)
    this:DestroySelf()
end

function Q7400115Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400115Trigger] PreTriggerIn")
end

function Q7400115Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400115Trigger] LightUpTriggerIn")
end

function Q7400115Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400115Trigger] TriggerOut")
end

return Q7400115Trigger
