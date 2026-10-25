require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414012Trigger = class("Q7414012Trigger", GadgetActorProxy)
Q7414012Trigger.defaultAlias = "Q7414012Trigger"
local Q74140ClientConfig = require("Quest/Client/Q74140ClientConfig")

local this
local subIDs = Q74140ClientConfig.SubIDs
local npcs = Q74140ClientConfig.Npcs
local points = Q74140ClientConfig.Points
local datas = Q74140ClientConfig.Datas

function Q7414012Trigger:OnPostDataPrepare()
    print("[MainId: 74140][Trigger: Q7414012Trigger] OnPostDataPrepare")
    this = self
end

function Q7414012Trigger:OnPostComponentPrepare()
    print("[MainId: 74140][Trigger: Q7414012Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414012Trigger:TriggerIn()
    print("[MainId: 74140][Trigger: Q7414012Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414012)
    this:DestroySelf()
end

function Q7414012Trigger:PreTriggerIn()
    print("[MainId: 74140][Trigger: Q7414012Trigger] PreTriggerIn")
end

function Q7414012Trigger:LightUpTriggerIn()
    print("[MainId: 74140][Trigger: Q7414012Trigger] LightUpTriggerIn")
end

function Q7414012Trigger:TriggerOut()
    print("[MainId: 74140][Trigger: Q7414012Trigger] TriggerOut")
end

return Q7414012Trigger
