require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400006_Trigger = class("Q400006_Trigger", GadgetActorProxy)
Q400006_Trigger.defaultAlias = "Q400006_Trigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400006_Trigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400006_Trigger] OnPostDataPrepare")
    this = self
end

function Q400006_Trigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400006_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400006_Trigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400006_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 400006)
    this:DestroySelf()
end

function Q400006_Trigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_Trigger] PreTriggerIn")
end

function Q400006_Trigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400006_Trigger] LightUpTriggerIn")
end

function Q400006_Trigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400006_Trigger] TriggerOut")
end

return Q400006_Trigger
