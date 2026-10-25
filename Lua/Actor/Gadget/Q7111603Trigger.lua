require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111603Trigger = class("Q7111603Trigger", GadgetActorProxy)
Q7111603Trigger.defaultAlias = "Q7111603Trigger"
local Q71116ClientConfig = require("Quest/Client/Q71116ClientConfig")

local this
local subIDs = Q71116ClientConfig.SubIDs
local npcs = Q71116ClientConfig.Npcs
local points = Q71116ClientConfig.Points
local datas = Q71116ClientConfig.Datas

function Q7111603Trigger:OnPostDataPrepare()
    print("[MainId: 71116][Trigger: Q7111603Trigger] OnPostDataPrepare")
    this = self
end

function Q7111603Trigger:OnPostComponentPrepare()
    print("[MainId: 71116][Trigger: Q7111603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7111603Trigger:TriggerIn()
    print("[MainId: 71116][Trigger: Q7111603Trigger] TriggerIn")
    actorMgr:GetActor("71116"):NarratorOnlyTaskByData(datas.C7111691)
    this:DestroySelf()
end

function Q7111603Trigger:PreTriggerIn()
    print("[MainId: 71116][Trigger: Q7111603Trigger] PreTriggerIn")
end

function Q7111603Trigger:LightUpTriggerIn()
    print("[MainId: 71116][Trigger: Q7111603Trigger] LightUpTriggerIn")
end

function Q7111603Trigger:TriggerOut()
    print("[MainId: 71116][Trigger: Q7111603Trigger] TriggerOut")
end

return Q7111603Trigger
