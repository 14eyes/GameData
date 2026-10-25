require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400220Trigger = class("Q7400220Trigger", GadgetActorProxy)
Q7400220Trigger.defaultAlias = "Q7400220Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400220Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400220Trigger] OnPostDataPrepare")
    this = self
end

function Q7400220Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400220Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400220Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400220Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400220)
    this:DestroySelf()
end

function Q7400220Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400220Trigger] PreTriggerIn")
end

function Q7400220Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400220Trigger] LightUpTriggerIn")
end

function Q7400220Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400220Trigger] TriggerOut")
end

return Q7400220Trigger
