require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110506Trigger = class("Q7110506Trigger", GadgetActorProxy)
Q7110506Trigger.defaultAlias = "Q7110506Trigger"
local Q71105ClientConfig = require("Quest/Client/Q71105ClientConfig")

local this
local subIDs = Q71105ClientConfig.SubIDs
local npcs = Q71105ClientConfig.Npcs
local points = Q71105ClientConfig.Points
local datas = Q71105ClientConfig.Datas

function Q7110506Trigger:OnPostDataPrepare()
    print("[MainId: 71105][Trigger: Q7110506Trigger] OnPostDataPrepare")
    this = self
end

function Q7110506Trigger:OnPostComponentPrepare()
    print("[MainId: 71105][Trigger: Q7110506Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110506Trigger:TriggerIn()
    print("[MainId: 71105][Trigger: Q7110506Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71105")
    actor:CreateQuestNpcById(7110506, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7110506Trigger:PreTriggerIn()
    print("[MainId: 71105][Trigger: Q7110506Trigger] PreTriggerIn")
end

function Q7110506Trigger:LightUpTriggerIn()
    print("[MainId: 71105][Trigger: Q7110506Trigger] LightUpTriggerIn")
end

function Q7110506Trigger:TriggerOut()
    print("[MainId: 71105][Trigger: Q7110506Trigger] TriggerOut")
end

return Q7110506Trigger
