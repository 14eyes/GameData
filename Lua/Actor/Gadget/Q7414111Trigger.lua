require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414111Trigger = class("Q7414111Trigger", GadgetActorProxy)
Q7414111Trigger.defaultAlias = "Q7414111Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414111Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414111Trigger] OnPostDataPrepare")
    this = self
end

function Q7414111Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414111Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414111Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414111Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74141")
    actor:CreateQuestNpcById(7414110, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7414111Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414111Trigger] PreTriggerIn")
end

function Q7414111Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414111Trigger] LightUpTriggerIn")
end

function Q7414111Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414111Trigger] TriggerOut")
end

return Q7414111Trigger
