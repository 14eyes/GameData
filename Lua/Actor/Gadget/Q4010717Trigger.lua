require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010717Trigger = class("Q4010717Trigger", GadgetActorProxy)
Q4010717Trigger.defaultAlias = "Q4010717Trigger"
local Q40107ClientConfig = require("Quest/Client/Q40107ClientConfig")

local this
local subIDs = Q40107ClientConfig.SubIDs
local npcs = Q40107ClientConfig.Npcs
local points = Q40107ClientConfig.Points
local datas = Q40107ClientConfig.Datas

function Q4010717Trigger:OnPostDataPrepare()
    print("[MainId: 40107][Trigger: Q4010717Trigger] OnPostDataPrepare")
    this = self
end

function Q4010717Trigger:OnPostComponentPrepare()
    print("[MainId: 40107][Trigger: Q4010717Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010717Trigger:TriggerIn()
    print("[MainId: 40107][Trigger: Q4010717Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4010717)
    this:DestroySelf()
end

function Q4010717Trigger:PreTriggerIn()
    print("[MainId: 40107][Trigger: Q4010717Trigger] PreTriggerIn")
end

function Q4010717Trigger:LightUpTriggerIn()
    print("[MainId: 40107][Trigger: Q4010717Trigger] LightUpTriggerIn")
end

function Q4010717Trigger:TriggerOut()
    print("[MainId: 40107][Trigger: Q4010717Trigger] TriggerOut")
end

return Q4010717Trigger
