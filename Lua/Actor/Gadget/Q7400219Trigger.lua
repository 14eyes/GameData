require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400219Trigger = class("Q7400219Trigger", GadgetActorProxy)
Q7400219Trigger.defaultAlias = "Q7400219Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400219Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400219Trigger] OnPostDataPrepare")
    this = self
end

function Q7400219Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400219Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400219Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400219Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400219)
    this:DestroySelf()
end

function Q7400219Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400219Trigger] PreTriggerIn")
end

function Q7400219Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400219Trigger] LightUpTriggerIn")
end

function Q7400219Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400219Trigger] TriggerOut")
end

return Q7400219Trigger
