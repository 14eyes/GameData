require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110088Trigger = class("Q7110088Trigger", GadgetActorProxy)
Q7110088Trigger.defaultAlias = "Q7110088Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110088Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110088Trigger] OnPostDataPrepare")
    this = self
end

function Q7110088Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110088Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110088Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110088Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110088)
    this:DestroySelf()
end

function Q7110088Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110088Trigger] PreTriggerIn")
end

function Q7110088Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110088Trigger] LightUpTriggerIn")
end

function Q7110088Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110088Trigger] TriggerOut")
end

return Q7110088Trigger
