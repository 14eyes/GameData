require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400105Trigger = class("Q7400105Trigger", GadgetActorProxy)
Q7400105Trigger.defaultAlias = "Q7400105Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400105Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400105Trigger] OnPostDataPrepare")
    this = self
end

function Q7400105Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400105Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400105Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400105Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400105)
    this:DestroySelf()
end

function Q7400105Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400105Trigger] PreTriggerIn")
end

function Q7400105Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400105Trigger] LightUpTriggerIn")
end

function Q7400105Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400105Trigger] TriggerOut")
end

return Q7400105Trigger
