require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414106Trigger = class("Q7414106Trigger", GadgetActorProxy)
Q7414106Trigger.defaultAlias = "Q7414106Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414106Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414106Trigger] OnPostDataPrepare")
    this = self
end

function Q7414106Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414106Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 2.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414106Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414106Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414106)
    this:DestroySelf()
end

function Q7414106Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414106Trigger] PreTriggerIn")
end

function Q7414106Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414106Trigger] LightUpTriggerIn")
end

function Q7414106Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414106Trigger] TriggerOut")
end

return Q7414106Trigger
