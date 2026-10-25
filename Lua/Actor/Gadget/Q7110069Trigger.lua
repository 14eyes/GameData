require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110069Trigger = class("Q7110069Trigger", GadgetActorProxy)
Q7110069Trigger.defaultAlias = "Q7110069Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110069Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110069Trigger] OnPostDataPrepare")
    this = self
end

function Q7110069Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110069Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110069Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110069Trigger] TriggerIn")
    actorMgr:GetActor("71100"):TransmitPlayerUseCustomizedTplByQuestId(7110069, 1, 36)
    this:DestroySelf()
end

function Q7110069Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110069Trigger] PreTriggerIn")
end

function Q7110069Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110069Trigger] LightUpTriggerIn")
end

function Q7110069Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110069Trigger] TriggerOut")
end

return Q7110069Trigger
