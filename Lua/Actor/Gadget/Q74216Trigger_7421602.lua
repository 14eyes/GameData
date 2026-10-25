require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger_7421602 = class("Q74216Trigger_7421602", GadgetActorProxy)
Q74216Trigger_7421602.defaultAlias = "Q74216Trigger_7421602"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger_7421602:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] OnPostDataPrepare")
    this = self
end

function Q74216Trigger_7421602:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] OnPostComponentPrepare")
    this:AddComponentTrigger(21.5825, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74216)
end

function Q74216Trigger_7421602:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] TriggerIn")
    actorUtils.FinishQuestID(false, 7421602)
    this:DestroySelf()
end

function Q74216Trigger_7421602:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] PreTriggerIn")
end

function Q74216Trigger_7421602:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] LightUpTriggerIn")
end

function Q74216Trigger_7421602:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421602] TriggerOut")
end

return Q74216Trigger_7421602
