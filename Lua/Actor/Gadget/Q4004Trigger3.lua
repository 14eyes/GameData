require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004Trigger3 = class("Q4004Trigger3", GadgetActorProxy)
Q4004Trigger3.defaultAlias = "Q4004Trigger3"
local Q4004ClientConfig = require("Quest/Client/Q4004ClientConfig")

local this
local subIDs = Q4004ClientConfig.SubIDs
local npcs = Q4004ClientConfig.Npcs
local points = Q4004ClientConfig.Points
local datas = Q4004ClientConfig.Datas

function Q4004Trigger3:OnPostDataPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger3] OnPostDataPrepare")
    this = self
end

function Q4004Trigger3:OnPostComponentPrepare()
    print("[MainId: 4004][Trigger: Q4004Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4004Trigger3:TriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 400414)
    this:DestroySelf()
end

function Q4004Trigger3:PreTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger3] PreTriggerIn")
end

function Q4004Trigger3:LightUpTriggerIn()
    print("[MainId: 4004][Trigger: Q4004Trigger3] LightUpTriggerIn")
end

function Q4004Trigger3:TriggerOut()
    print("[MainId: 4004][Trigger: Q4004Trigger3] TriggerOut")
end

return Q4004Trigger3
