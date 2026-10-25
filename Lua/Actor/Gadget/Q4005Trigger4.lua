require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005Trigger4 = class("Q4005Trigger4", GadgetActorProxy)
Q4005Trigger4.defaultAlias = "Q4005Trigger4"
local Q4005ClientConfig = require("Quest/Client/Q4005ClientConfig")

local this
local subIDs = Q4005ClientConfig.SubIDs
local npcs = Q4005ClientConfig.Npcs
local points = Q4005ClientConfig.Points
local datas = Q4005ClientConfig.Datas

function Q4005Trigger4:OnPostDataPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger4] OnPostDataPrepare")
    this = self
end

function Q4005Trigger4:OnPostComponentPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4005Trigger4:TriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 400508)
    this:DestroySelf()
end

function Q4005Trigger4:PreTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger4] PreTriggerIn")
end

function Q4005Trigger4:LightUpTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger4] LightUpTriggerIn")
end

function Q4005Trigger4:TriggerOut()
    print("[MainId: 4005][Trigger: Q4005Trigger4] TriggerOut")
end

return Q4005Trigger4
