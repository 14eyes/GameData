require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74047Trigger = class("Q74047Trigger", GadgetActorProxy)
Q74047Trigger.defaultAlias = "Q74047Trigger"
local Q74047ClientConfig = require("Quest/Client/Q74047ClientConfig")

local this
local subIDs = Q74047ClientConfig.SubIDs
local npcs = Q74047ClientConfig.Npcs
local points = Q74047ClientConfig.Points
local datas = Q74047ClientConfig.Datas

function Q74047Trigger:OnPostDataPrepare()
    print("[MainId: 74047][Trigger: Q74047Trigger] OnPostDataPrepare")
    this = self
end

function Q74047Trigger:OnPostComponentPrepare()
    print("[MainId: 74047][Trigger: Q74047Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 16, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74047Trigger:TriggerIn()
    print("[MainId: 74047][Trigger: Q74047Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404701)
    this:DestroySelf()
end

function Q74047Trigger:PreTriggerIn()
    print("[MainId: 74047][Trigger: Q74047Trigger] PreTriggerIn")
end

function Q74047Trigger:LightUpTriggerIn()
    print("[MainId: 74047][Trigger: Q74047Trigger] LightUpTriggerIn")
end

function Q74047Trigger:TriggerOut()
    print("[MainId: 74047][Trigger: Q74047Trigger] TriggerOut")
end

return Q74047Trigger
