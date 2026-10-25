require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402305finish = class("Q402305finish", GadgetActorProxy)
Q402305finish.defaultAlias = "Q402305finish"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402305finish:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402305finish] OnPostDataPrepare")
    this = self
end

function Q402305finish:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402305finish] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402305finish:TriggerIn()
    print("[MainId: 4023][Trigger: Q402305finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402305)
    this:DestroySelf()
end

function Q402305finish:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402305finish] PreTriggerIn")
end

function Q402305finish:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402305finish] LightUpTriggerIn")
end

function Q402305finish:TriggerOut()
    print("[MainId: 4023][Trigger: Q402305finish] TriggerOut")
end

return Q402305finish
