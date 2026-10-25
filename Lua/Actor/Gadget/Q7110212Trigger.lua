require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110212Trigger = class("Q7110212Trigger", GadgetActorProxy)
Q7110212Trigger.defaultAlias = "Q7110212Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110212Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110212Trigger] OnPostDataPrepare")
    this = self
end

function Q7110212Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110212Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110212Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110212Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110212)
    this:DestroySelf()
end

function Q7110212Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110212Trigger] PreTriggerIn")
end

function Q7110212Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110212Trigger] LightUpTriggerIn")
end

function Q7110212Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110212Trigger] TriggerOut")
end

return Q7110212Trigger
