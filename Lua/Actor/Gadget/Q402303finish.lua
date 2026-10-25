require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402303finish = class("Q402303finish", GadgetActorProxy)
Q402303finish.defaultAlias = "Q402303finish"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402303finish:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402303finish] OnPostDataPrepare")
    this = self
end

function Q402303finish:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402303finish] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402303finish:TriggerIn()
    print("[MainId: 4023][Trigger: Q402303finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402303)
    this:DestroySelf()
end

function Q402303finish:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402303finish] PreTriggerIn")
end

function Q402303finish:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402303finish] LightUpTriggerIn")
end

function Q402303finish:TriggerOut()
    print("[MainId: 4023][Trigger: Q402303finish] TriggerOut")
end

return Q402303finish
