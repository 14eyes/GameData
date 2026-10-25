require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerfinish = class("Q401804Triggerfinish", GadgetActorProxy)
Q401804Triggerfinish.defaultAlias = "Q401804Triggerfinish"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerfinish:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] OnPostDataPrepare")
    this = self
end

function Q401804Triggerfinish:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerfinish:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] TriggerIn")
    actorMgr:GetActor("4018"):RequestInteraction(npcs.Npc13518Data.alias, "", true)
    this:DestroySelf()
end

function Q401804Triggerfinish:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] PreTriggerIn")
end

function Q401804Triggerfinish:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] LightUpTriggerIn")
end

function Q401804Triggerfinish:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerfinish] TriggerOut")
end

return Q401804Triggerfinish
