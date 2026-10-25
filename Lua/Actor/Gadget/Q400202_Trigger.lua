require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400202_Trigger = class("Q400202_Trigger", GadgetActorProxy)
Q400202_Trigger.defaultAlias = "Q400202_Trigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400202_Trigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400202_Trigger] OnPostDataPrepare")
    this = self
end

function Q400202_Trigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400202_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400202_Trigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400202_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 400202)
    this:DestroySelf()
end

function Q400202_Trigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400202_Trigger] PreTriggerIn")
end

function Q400202_Trigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400202_Trigger] LightUpTriggerIn")
end

function Q400202_Trigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400202_Trigger] TriggerOut")
end

return Q400202_Trigger
