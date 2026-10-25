require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414109Trigger = class("Q7414109Trigger", GadgetActorProxy)
Q7414109Trigger.defaultAlias = "Q7414109Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414109Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414109Trigger] OnPostDataPrepare")
    this = self
end

function Q7414109Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414109Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414109)
    this:DestroySelf()
end

function Q7414109Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414109Trigger] PreTriggerIn")
end

function Q7414109Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414109Trigger] LightUpTriggerIn")
end

function Q7414109Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414109Trigger] TriggerOut")
end

return Q7414109Trigger
