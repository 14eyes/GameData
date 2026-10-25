require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013902Trigger = class("Q4013902Trigger", GadgetActorProxy)
Q4013902Trigger.defaultAlias = "Q4013902Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013902Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013902Trigger] OnPostDataPrepare")
    this = self
end

function Q4013902Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013902Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40139)
end

function Q4013902Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013902Trigger] TriggerIn")
    globalActor:DisablePaimonInProfilePage({3})
    actorMgr:GetActor("40139"):DeployStoryByQuest(134013902)
    this:DestroySelf()
end

function Q4013902Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013902Trigger] PreTriggerIn")
end

function Q4013902Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013902Trigger] LightUpTriggerIn")
end

function Q4013902Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013902Trigger] TriggerOut")
end

return Q4013902Trigger
