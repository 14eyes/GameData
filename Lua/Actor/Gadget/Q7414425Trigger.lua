require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414425Trigger = class("Q7414425Trigger", GadgetActorProxy)
Q7414425Trigger.defaultAlias = "Q7414425Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414425Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414425Trigger] OnPostDataPrepare")
    this = self
end

function Q7414425Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414425Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414425Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414425Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414425)
    this:DestroySelf()
end

function Q7414425Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414425Trigger] PreTriggerIn")
end

function Q7414425Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414425Trigger] LightUpTriggerIn")
end

function Q7414425Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414425Trigger] TriggerOut")
end

return Q7414425Trigger
