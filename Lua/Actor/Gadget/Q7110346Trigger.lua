require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110346Trigger = class("Q7110346Trigger", GadgetActorProxy)
Q7110346Trigger.defaultAlias = "Q7110346Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110346Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110346Trigger] OnPostDataPrepare")
    this = self
end

function Q7110346Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110346Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110346Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110346Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110346)
    this:DestroySelf()
end

function Q7110346Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110346Trigger] PreTriggerIn")
end

function Q7110346Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110346Trigger] LightUpTriggerIn")
end

function Q7110346Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110346Trigger] TriggerOut")
end

return Q7110346Trigger
