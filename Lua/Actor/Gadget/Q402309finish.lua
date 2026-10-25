require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402309finish = class("Q402309finish", GadgetActorProxy)
Q402309finish.defaultAlias = "Q402309finish"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402309finish:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402309finish] OnPostDataPrepare")
    this = self
end

function Q402309finish:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402309finish] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402309finish:TriggerIn()
    print("[MainId: 4023][Trigger: Q402309finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402309)
    this:DestroySelf()
end

function Q402309finish:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402309finish] PreTriggerIn")
end

function Q402309finish:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402309finish] LightUpTriggerIn")
end

function Q402309finish:TriggerOut()
    print("[MainId: 4023][Trigger: Q402309finish] TriggerOut")
end

return Q402309finish
