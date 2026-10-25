require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013922Trigger = class("Q4013922Trigger", GadgetActorProxy)
Q4013922Trigger.defaultAlias = "Q4013922Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013922Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013922Trigger] OnPostDataPrepare")
    this = self
end

function Q4013922Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013922Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40139)
end

function Q4013922Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013922Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4013922)
    this:DestroySelf()
end

function Q4013922Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013922Trigger] PreTriggerIn")
end

function Q4013922Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013922Trigger] LightUpTriggerIn")
end

function Q4013922Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013922Trigger] TriggerOut")
end

return Q4013922Trigger
