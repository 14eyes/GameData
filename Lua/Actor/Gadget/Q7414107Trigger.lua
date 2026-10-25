require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414107Trigger = class("Q7414107Trigger", GadgetActorProxy)
Q7414107Trigger.defaultAlias = "Q7414107Trigger"
local Q74141ClientConfig = require("Quest/Client/Q74141ClientConfig")

local this
local subIDs = Q74141ClientConfig.SubIDs
local npcs = Q74141ClientConfig.Npcs
local points = Q74141ClientConfig.Points
local datas = Q74141ClientConfig.Datas

function Q7414107Trigger:OnPostDataPrepare()
    print("[MainId: 74141][Trigger: Q7414107Trigger] OnPostDataPrepare")
    this = self
end

function Q7414107Trigger:OnPostComponentPrepare()
    print("[MainId: 74141][Trigger: Q7414107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414107Trigger:TriggerIn()
    print("[MainId: 74141][Trigger: Q7414107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414107)
    this:DestroySelf()
end

function Q7414107Trigger:PreTriggerIn()
    print("[MainId: 74141][Trigger: Q7414107Trigger] PreTriggerIn")
end

function Q7414107Trigger:LightUpTriggerIn()
    print("[MainId: 74141][Trigger: Q7414107Trigger] LightUpTriggerIn")
end

function Q7414107Trigger:TriggerOut()
    print("[MainId: 74141][Trigger: Q7414107Trigger] TriggerOut")
end

return Q7414107Trigger
