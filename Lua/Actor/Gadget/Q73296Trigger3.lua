require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73296Trigger3 = class("Q73296Trigger3", GadgetActorProxy)
Q73296Trigger3.defaultAlias = "Q73296Trigger3"
local Q73296ClientConfig = require("Quest/Client/Q73296ClientConfig")

local this
local subIDs = Q73296ClientConfig.SubIDs
local npcs = Q73296ClientConfig.Npcs
local points = Q73296ClientConfig.Points
local datas = Q73296ClientConfig.Datas

function Q73296Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73296Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73296Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329611)
    this:DestroySelf()
end

function Q73296Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73296Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73296Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q73296Trigger3
