require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400138Trigger = class("Q7400138Trigger", GadgetActorProxy)
Q7400138Trigger.defaultAlias = "Q7400138Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400138Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400138Trigger] OnPostDataPrepare")
    this = self
end

function Q7400138Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400138Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400138Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400138Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400138)
    this:DestroySelf()
end

function Q7400138Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400138Trigger] PreTriggerIn")
end

function Q7400138Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400138Trigger] LightUpTriggerIn")
end

function Q7400138Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400138Trigger] TriggerOut")
end

return Q7400138Trigger
