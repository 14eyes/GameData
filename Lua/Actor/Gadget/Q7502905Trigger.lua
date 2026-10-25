require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502905Trigger = class("Q7502905Trigger", GadgetActorProxy)
Q7502905Trigger.defaultAlias = "Q7502905Trigger"
local Q75029ClientConfig = require("Quest/Client/Q75029ClientConfig")

local this
local subIDs = Q75029ClientConfig.SubIDs
local npcs = Q75029ClientConfig.Npcs
local datas = Q75029ClientConfig.Datas

function Q7502905Trigger:OnPostDataPrepare()
    print("[MainId: 75029][Trigger: Q7502905Trigger] OnPostDataPrepare")
    this = self
end

function Q7502905Trigger:OnPostComponentPrepare()
    print("[MainId: 75029][Trigger: Q7502905Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75029)
end

function Q7502905Trigger:TriggerIn()
    print("[MainId: 75029][Trigger: Q7502905Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75029")
    actor:QuestNarratorTask(datas.NarratorWithId7502905)
    actor:EnterSceneLookCamera({x = -1930.0, y = 250.0, z = 9711.0}, 2, 4, false, false)
    this:DestroySelf()
end

function Q7502905Trigger:PreTriggerIn()
    print("[MainId: 75029][Trigger: Q7502905Trigger] PreTriggerIn")
end

function Q7502905Trigger:LightUpTriggerIn()
    print("[MainId: 75029][Trigger: Q7502905Trigger] LightUpTriggerIn")
end

function Q7502905Trigger:TriggerOut()
    print("[MainId: 75029][Trigger: Q7502905Trigger] TriggerOut")
end

return Q7502905Trigger
