require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75053Trigger = class("Q75053Trigger", GadgetActorProxy)
Q75053Trigger.defaultAlias = "Q75053Trigger"
local Q75053ClientConfig = require("Quest/Client/Q75053ClientConfig")

local this
local subIDs = Q75053ClientConfig.SubIDs
local npcs = Q75053ClientConfig.Npcs
local datas = Q75053ClientConfig.Datas

function Q75053Trigger:OnPostDataPrepare()
    print("[MainId: 75053][Trigger: Q75053Trigger] OnPostDataPrepare")
    this = self
end

function Q75053Trigger:OnPostComponentPrepare()
    print("[MainId: 75053][Trigger: Q75053Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75053)
end

function Q75053Trigger:TriggerIn()
    print("[MainId: 75053][Trigger: Q75053Trigger] TriggerIn")
    local actor = actorMgr:GetActor("75053")
    actor:QuestNarratorTask(datas.NarratorWithId)
    actor:EnterSceneLookCamera({x = -1204.0, y = 306.0, z = 9454.0}, 1, 1, false, false)
    this:DestroySelf()
end

function Q75053Trigger:PreTriggerIn()
    print("[MainId: 75053][Trigger: Q75053Trigger] PreTriggerIn")
end

function Q75053Trigger:LightUpTriggerIn()
    print("[MainId: 75053][Trigger: Q75053Trigger] LightUpTriggerIn")
end

function Q75053Trigger:TriggerOut()
    print("[MainId: 75053][Trigger: Q75053Trigger] TriggerOut")
end

return Q75053Trigger
