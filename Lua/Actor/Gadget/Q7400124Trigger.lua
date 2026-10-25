require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400124Trigger = class("Q7400124Trigger", GadgetActorProxy)
Q7400124Trigger.defaultAlias = "Q7400124Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400124Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400124Trigger] OnPostDataPrepare")
    this = self
end

function Q7400124Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400124Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400124Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400124Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400124)
    this:DestroySelf()
end

function Q7400124Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400124Trigger] PreTriggerIn")
end

function Q7400124Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400124Trigger] LightUpTriggerIn")
end

function Q7400124Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400124Trigger] TriggerOut")
end

return Q7400124Trigger
