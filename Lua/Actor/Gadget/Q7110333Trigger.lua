require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110333Trigger = class("Q7110333Trigger", GadgetActorProxy)
Q7110333Trigger.defaultAlias = "Q7110333Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110333Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110333Trigger] OnPostDataPrepare")
    this = self
end

function Q7110333Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110333Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110333Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110333Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110333)
    this:DestroySelf()
end

function Q7110333Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110333Trigger] PreTriggerIn")
end

function Q7110333Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110333Trigger] LightUpTriggerIn")
end

function Q7110333Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110333Trigger] TriggerOut")
end

return Q7110333Trigger
