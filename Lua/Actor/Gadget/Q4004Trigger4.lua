require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004Trigger4 = class("Q4004Trigger4", GadgetActorProxy)
Q4004Trigger4.defaultAlias = "Q4004Trigger4"
local Q4004ClientConfig = require("Quest/Client/Q4004ClientConfig")

local this
local subIDs = Q4004ClientConfig.SubIDs
local npcs = Q4004ClientConfig.Npcs
local points = Q4004ClientConfig.Points
local datas = Q4004ClientConfig.Datas

function Q4004Trigger4:OnPostDataPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger4] OnPostDataPrepare")
    this = self
end

function Q4004Trigger4:OnPostComponentPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4004Trigger4:TriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 400415)
    this:DestroySelf()
end

function Q4004Trigger4:PreTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger4] PreTriggerIn")
end

function Q4004Trigger4:LightUpTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger4] LightUpTriggerIn")
end

function Q4004Trigger4:TriggerOut()
    print("[MainId: 4004][Trigger: Q4004Trigger4] TriggerOut")
end

return Q4004Trigger4
