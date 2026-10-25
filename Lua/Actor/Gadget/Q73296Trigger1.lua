require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73296Trigger1 = class("Q73296Trigger1", GadgetActorProxy)
Q73296Trigger1.defaultAlias = "Q73296Trigger1"
local Q73296ClientConfig = require("Quest/Client/Q73296ClientConfig")

local this
local subIDs = Q73296ClientConfig.SubIDs
local npcs = Q73296ClientConfig.Npcs
local points = Q73296ClientConfig.Points
local datas = Q73296ClientConfig.Datas

function Q73296Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73296Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73296Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329609)
    this:DestroySelf()
end

function Q73296Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73296Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73296Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73296Trigger1
