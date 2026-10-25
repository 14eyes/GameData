require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006718Trigger_1 = class("Q7006718Trigger_1", GadgetActorProxy)
Q7006718Trigger_1.defaultAlias = "Q7006718Trigger_1"
local Q70067ClientConfig = require("Quest/Client/Q70067ClientConfig")

local this
local subIDs = Q70067ClientConfig.SubIDs
local datas = Q70067ClientConfig.Datas
local npcs = Q70067ClientConfig.Npcs
local points = Q70067ClientConfig.Points

function Q7006718Trigger_1:OnPostDataPrepare()
    print("Q7006718Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7006718Trigger_1:OnPostComponentPrepare()
    print("Q7006718Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70067)
end

function Q7006718Trigger_1:TriggerIn()
    print("Q7006718Trigger_1 - TriggerIn")
end

function Q7006718Trigger_1:PreTriggerIn()
    print("Q7006718Trigger_1 - PreTriggerIn")
end

function Q7006718Trigger_1:LightUpTriggerIn()
    print("Q7006718Trigger_1 - LightUpTriggerIn")
    actorUtils.SetMainPageFeatureDisable(70067, "MiniMap", true)
end

function Q7006718Trigger_1:TriggerOut()
    print("Q7006718Trigger_1 - TriggerOut")
    actorUtils.FinishQuestID(true, 70006718)
    actorUtils.FinishQuestID(true, 70006719)
    actorUtils.FinishQuestID(true, 70006720)
    actorUtils.FinishQuestID(true, 70006722)
    this:DestroySelf()
end

return Q7006718Trigger_1
