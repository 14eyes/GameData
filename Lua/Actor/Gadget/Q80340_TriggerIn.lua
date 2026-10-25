require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80340_TriggerIn = class("Q80340_TriggerIn", GadgetActorProxy)
Q80340_TriggerIn.defaultAlias = "Q80340_TriggerIn"
local Q803ClientConfig = require("Quest/Client/Q803ClientConfig")

local this
local subIDs = Q803ClientConfig.SubIDs
local npcs = Q803ClientConfig.Npcs
local datas = Q803ClientConfig.Datas

function Q80340_TriggerIn:OnPostDataPrepare()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q80340_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 803)
end

function Q80340_TriggerIn:TriggerIn()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q80340_TriggerIn:PreTriggerIn()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] PreTriggerIn")
    local actor = actorMgr:GetActor("803")
    actor:CreateQuestNpcById(80340, npcs.AmborData.id, 0)
    actor:RequestInteraction(npcs.AmborData.alias, "", true)
end

function Q80340_TriggerIn:LightUpTriggerIn()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] LightUpTriggerIn")
end

function Q80340_TriggerIn:TriggerOut()
    print("[MainId: 803][Trigger: Q80340_TriggerIn] TriggerOut")
end

return Q80340_TriggerIn
