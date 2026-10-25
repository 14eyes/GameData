require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013218Trigger = class("Q4013218Trigger", GadgetActorProxy)
Q4013218Trigger.defaultAlias = "Q4013218Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013218Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013218Trigger] OnPostDataPrepare")
    this = self
end

function Q4013218Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013218Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q4013218Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013218Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013218)
    this:DestroySelf()
end

function Q4013218Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013218Trigger] PreTriggerIn")
end

function Q4013218Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013218Trigger] LightUpTriggerIn")
end

function Q4013218Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013218Trigger] TriggerOut")
end

return Q4013218Trigger
