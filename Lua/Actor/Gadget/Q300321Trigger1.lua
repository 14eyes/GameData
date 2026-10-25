require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300321Trigger1 = class("Q300321Trigger1", GadgetActorProxy)
Q300321Trigger1.defaultAlias = "Q300321Trigger1"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300321Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300321Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300321Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):EnterSceneLookCamera(sceneData:GetDummyPoint(20132, "Q300321_Rock02").pos, 0, 2, true, false)
    self:DestroySelf()
end

function Q300321Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q300321Trigger1
