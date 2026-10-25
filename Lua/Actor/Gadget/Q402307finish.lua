require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402307finish = class("Q402307finish", GadgetActorProxy)
Q402307finish.defaultAlias = "Q402307finish"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402307finish:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402307finish] OnPostDataPrepare")
    this = self
end

function Q402307finish:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402307finish] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402307finish:TriggerIn()
    print("[MainId: 4023][Trigger: Q402307finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402307)
    this:DestroySelf()
end

function Q402307finish:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402307finish] PreTriggerIn")
end

function Q402307finish:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402307finish] LightUpTriggerIn")
end

function Q402307finish:TriggerOut()
    print("[MainId: 4023][Trigger: Q402307finish] TriggerOut")
end

return Q402307finish
