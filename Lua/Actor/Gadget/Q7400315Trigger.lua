require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400315Trigger = class("Q7400315Trigger", GadgetActorProxy)
Q7400315Trigger.defaultAlias = "Q7400315Trigger"
local Q74003ClientConfig = require("Quest/Client/Q74003ClientConfig")

local this
local subIDs = Q74003ClientConfig.SubIDs
local npcs = Q74003ClientConfig.Npcs
local points = Q74003ClientConfig.Points
local datas = Q74003ClientConfig.Datas

function Q7400315Trigger:OnPostDataPrepare()
    print("[MainId: 74003][Trigger: Q7400315Trigger] OnPostDataPrepare")
    this = self
end

function Q7400315Trigger:OnPostComponentPrepare()
    print("[MainId: 74003][Trigger: Q7400315Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(120, 120, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400315Trigger:TriggerIn()
    print("[MainId: 74003][Trigger: Q7400315Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400315)
    this:DestroySelf()
end

function Q7400315Trigger:PreTriggerIn()
    print("[MainId: 74003][Trigger: Q7400315Trigger] PreTriggerIn")
end

function Q7400315Trigger:LightUpTriggerIn()
    print("[MainId: 74003][Trigger: Q7400315Trigger] LightUpTriggerIn")
end

function Q7400315Trigger:TriggerOut()
    print("[MainId: 74003][Trigger: Q7400315Trigger] TriggerOut")
end

return Q7400315Trigger
