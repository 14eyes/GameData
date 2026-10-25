require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402504Finish = class("Q402504Finish", GadgetActorProxy)
Q402504Finish.defaultAlias = "Q402504Finish"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402504Finish:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402504Finish] OnPostDataPrepare")
    this = self
end

function Q402504Finish:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402504Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402504Finish:TriggerIn()
    print("[MainId: 4025][Trigger: Q402504Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402504)
    this:DestroySelf()
end

function Q402504Finish:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402504Finish] PreTriggerIn")
end

function Q402504Finish:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402504Finish] LightUpTriggerIn")
end

function Q402504Finish:TriggerOut()
    print("[MainId: 4025][Trigger: Q402504Finish] TriggerOut")
end

return Q402504Finish
