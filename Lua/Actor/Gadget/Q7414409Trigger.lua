require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414409Trigger = class("Q7414409Trigger", GadgetActorProxy)
Q7414409Trigger.defaultAlias = "Q7414409Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414409Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414409Trigger] OnPostDataPrepare")
    this = self
end

function Q7414409Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414409Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7414409Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414409Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7414409)
    this:DestroySelf()
end

function Q7414409Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414409Trigger] PreTriggerIn")
end

function Q7414409Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414409Trigger] LightUpTriggerIn")
end

function Q7414409Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414409Trigger] TriggerOut")
end

return Q7414409Trigger
