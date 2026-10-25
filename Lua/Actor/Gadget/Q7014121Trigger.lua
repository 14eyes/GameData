require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7014121Trigger = class("Q7014121Trigger", GadgetActorProxy)
Q7014121Trigger.defaultAlias = "Q7014121Trigger"
local Q70141ClientConfig = require("Quest/Client/Q70141ClientConfig")

local mainID = Q70141ClientConfig.MainID
local actorAlias = Q70141ClientConfig.ActorAlias
local subIDs = Q70141ClientConfig.SubIDs
local npcs = Q70141ClientConfig.Npcs
local datas = Q70141ClientConfig.Datas

function Q7014121Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7014121Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7014121Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):PlayCutsceneIndex("7014121", nil, nil, nil, false)
    self:DestroySelf()
end

function Q7014121Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7014121Trigger
