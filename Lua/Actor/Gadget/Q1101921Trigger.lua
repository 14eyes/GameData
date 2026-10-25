require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101921Trigger = class("Q1101921Trigger", GadgetActorProxy)
Q1101921Trigger.defaultAlias = "Q1101921Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101921Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101921Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101921Trigger:TriggerIn()
    print("TriggerIn")
    globalActor:StopLocalAvatar()
    local actor = actorMgr:GetActor("11019")
    actor:EnablePlayerInput(false)
    actorUtils.FinishQuestID(false, 1101921)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "guide_Q1101921").pos, 0, 1.5, false, false)
    actor:CallDelay(1.5, function(arg1)
        actorMgr:GetActor("11019"):EnablePlayerInput(true)
    end)

    this:DestroySelf()
end

function Q1101921Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101921Trigger
