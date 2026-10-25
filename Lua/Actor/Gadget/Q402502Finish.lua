require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402502Finish = class("Q402502Finish", GadgetActorProxy)
Q402502Finish.defaultAlias = "Q402502Finish"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402502Finish:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402502Finish] OnPostDataPrepare")
    this = self
end

function Q402502Finish:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402502Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402502Finish:TriggerIn()
    print("[MainId: 4025][Trigger: Q402502Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402502)
    this:DestroySelf()
end

function Q402502Finish:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402502Finish] PreTriggerIn")
end

function Q402502Finish:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402502Finish] LightUpTriggerIn")
end

function Q402502Finish:TriggerOut()
    print("[MainId: 4025][Trigger: Q402502Finish] TriggerOut")
end

return Q402502Finish
