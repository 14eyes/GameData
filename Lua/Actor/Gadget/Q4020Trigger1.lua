require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020Trigger1 = class("Q4020Trigger1", GadgetActorProxy)
Q4020Trigger1.defaultAlias = "Q4020Trigger1"
local Q4020ClientConfig = require("Quest/Client/Q4020ClientConfig")

local this
local subIDs = Q4020ClientConfig.SubIDs
local npcs = Q4020ClientConfig.Npcs
local gadgets = Q4020ClientConfig.Gadgets
local points = Q4020ClientConfig.Points
local datas = Q4020ClientConfig.Datas

function Q4020Trigger1:OnPostDataPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger1] OnPostDataPrepare")
    this = self
end

function Q4020Trigger1:OnPostComponentPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4020Trigger1:TriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger1] TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 402013)
end

function Q4020Trigger1:PreTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger1] PreTriggerIn")
end

function Q4020Trigger1:LightUpTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger1] LightUpTriggerIn")
end

function Q4020Trigger1:TriggerOut()
    print("[MainId: 4020][Trigger: Q4020Trigger1] TriggerOut")
end

return Q4020Trigger1
