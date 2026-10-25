require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400001Trigger = class("Q7400001Trigger", GadgetActorProxy)
Q7400001Trigger.defaultAlias = "Q7400001Trigger"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local this
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400001Trigger:OnPostDataPrepare()
    print("[MainId: 74000][Trigger: Q7400001Trigger] OnPostDataPrepare")
    this = self
end

function Q7400001Trigger:OnPostComponentPrepare()
    print("[MainId: 74000][Trigger: Q7400001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, sceneData:GetDummyPoint(3, "Q74000_enterregion"), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400001Trigger:TriggerIn()
    print("[MainId: 74000][Trigger: Q7400001Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400001)
    this:DestroySelf()
end

function Q7400001Trigger:PreTriggerIn()
    print("[MainId: 74000][Trigger: Q7400001Trigger] PreTriggerIn")
end

function Q7400001Trigger:LightUpTriggerIn()
    print("[MainId: 74000][Trigger: Q7400001Trigger] LightUpTriggerIn")
end

function Q7400001Trigger:TriggerOut()
    print("[MainId: 74000][Trigger: Q7400001Trigger] TriggerOut")
end

return Q7400001Trigger
