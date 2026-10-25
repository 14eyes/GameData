require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111601Trigger = class("Q7111601Trigger", GadgetActorProxy)
Q7111601Trigger.defaultAlias = "Q7111601Trigger"
local Q71116ClientConfig = require("Quest/Client/Q71116ClientConfig")

local this
local subIDs = Q71116ClientConfig.SubIDs
local npcs = Q71116ClientConfig.Npcs
local points = Q71116ClientConfig.Points
local datas = Q71116ClientConfig.Datas

function Q7111601Trigger:OnPostDataPrepare()
    print("[MainId: 71116][Trigger: Q7111601Trigger] OnPostDataPrepare")
    this = self
end

function Q7111601Trigger:OnPostComponentPrepare()
    print("[MainId: 71116][Trigger: Q7111601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7111601Trigger:TriggerIn()
    print("[MainId: 71116][Trigger: Q7111601Trigger] TriggerIn")
    actorMgr:GetActor("71116"):NarratorOnlyTaskByData(datas.C7111690)
    this:DestroySelf()
end

function Q7111601Trigger:PreTriggerIn()
    print("[MainId: 71116][Trigger: Q7111601Trigger] PreTriggerIn")
end

function Q7111601Trigger:LightUpTriggerIn()
    print("[MainId: 71116][Trigger: Q7111601Trigger] LightUpTriggerIn")
end

function Q7111601Trigger:TriggerOut()
    print("[MainId: 71116][Trigger: Q7111601Trigger] TriggerOut")
end

return Q7111601Trigger
