require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402506Finish = class("Q402506Finish", GadgetActorProxy)
Q402506Finish.defaultAlias = "Q402506Finish"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402506Finish:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402506Finish] OnPostDataPrepare")
    this = self
end

function Q402506Finish:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402506Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402506Finish:TriggerIn()
    print("[MainId: 4025][Trigger: Q402506Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402506)
    this:DestroySelf()
end

function Q402506Finish:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402506Finish] PreTriggerIn")
end

function Q402506Finish:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402506Finish] LightUpTriggerIn")
end

function Q402506Finish:TriggerOut()
    print("[MainId: 4025][Trigger: Q402506Finish] TriggerOut")
end

return Q402506Finish
