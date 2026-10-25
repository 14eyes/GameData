require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300209Trigger = class("Q1300209Trigger", GadgetActorProxy)
Q1300209Trigger.defaultAlias = "Q1300209Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300209Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13002")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(20149, "Q1300209_Seepoint_02").pos, 0, 3, true, false)
    actor:EnablePlayerInput(false)
    actor:CallDelay(3, function(arg1)
        actorMgr:GetActor("13002"):EnablePlayerInput(true)
    end)

    self:DestroySelf()
end

function Q1300209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300209Trigger
