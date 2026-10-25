require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013213Trigger = class("Q4013213Trigger", GadgetActorProxy)
Q4013213Trigger.defaultAlias = "Q4013213Trigger"
local Q40132ClientConfig = require("Quest/Client/Q40132ClientConfig")

local this
local subIDs = Q40132ClientConfig.SubIDs
local npcs = Q40132ClientConfig.Npcs
local points = Q40132ClientConfig.Points
local datas = Q40132ClientConfig.Datas

function Q4013213Trigger:OnPostDataPrepare()
    print("[MainId: 40132][Trigger: Q4013213Trigger] OnPostDataPrepare")
    this = self
end

function Q4013213Trigger:OnPostComponentPrepare()
    print("[MainId: 40132][Trigger: Q4013213Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q4013213Trigger:TriggerIn()
    print("[MainId: 40132][Trigger: Q4013213Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013213)
    this:DestroySelf()
end

function Q4013213Trigger:PreTriggerIn()
    print("[MainId: 40132][Trigger: Q4013213Trigger] PreTriggerIn")
end

function Q4013213Trigger:LightUpTriggerIn()
    print("[MainId: 40132][Trigger: Q4013213Trigger] LightUpTriggerIn")
end

function Q4013213Trigger:TriggerOut()
    print("[MainId: 40132][Trigger: Q4013213Trigger] TriggerOut")
end

return Q4013213Trigger
