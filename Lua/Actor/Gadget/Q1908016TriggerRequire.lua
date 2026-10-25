require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1908016TriggerRequire = class("Q1908016TriggerRequire", GadgetActorProxy)
Q1908016TriggerRequire.defaultAlias = "Q1908016TriggerRequire"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q1908016TriggerRequire:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] OnPostDataPrepare")
    this = self
end

function Q1908016TriggerRequire:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(13, 13.82996, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1908016TriggerRequire:TriggerIn()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] TriggerIn")
    local actor = actorMgr:GetActor("19080")
    actor:CreateQuestNpcById(1908016, npcs.Coop_KaeyaData.id, 1)
    actor:RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1908016TriggerRequire:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] PreTriggerIn")
end

function Q1908016TriggerRequire:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] LightUpTriggerIn")
end

function Q1908016TriggerRequire:TriggerOut()
    print("[MainId: 19080][Trigger: Q1908016TriggerRequire] TriggerOut")
end

return Q1908016TriggerRequire
