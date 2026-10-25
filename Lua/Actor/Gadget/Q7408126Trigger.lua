require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408126Trigger = class("Q7408126Trigger", GadgetActorProxy)
Q7408126Trigger.defaultAlias = "Q7408126Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408126Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408126Trigger] OnPostDataPrepare")
    this = self
end

function Q7408126Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408126Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(11.1057, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408126Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408126Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408126)
    this:DestroySelf()
end

function Q7408126Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408126Trigger] PreTriggerIn")
end

function Q7408126Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408126Trigger] LightUpTriggerIn")
end

function Q7408126Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408126Trigger] TriggerOut")
end

return Q7408126Trigger
