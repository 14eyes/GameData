require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110329Trigger = class("Q7110329Trigger", GadgetActorProxy)
Q7110329Trigger.defaultAlias = "Q7110329Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110329Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110329Trigger] OnPostDataPrepare")
    this = self
end

function Q7110329Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110329Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110329Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110329Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110329)
    this:DestroySelf()
end

function Q7110329Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110329Trigger] PreTriggerIn")
end

function Q7110329Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110329Trigger] LightUpTriggerIn")
end

function Q7110329Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110329Trigger] TriggerOut")
end

return Q7110329Trigger
