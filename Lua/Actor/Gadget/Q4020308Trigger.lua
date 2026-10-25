require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020308Trigger = class("Q4020308Trigger", GadgetActorProxy)
Q4020308Trigger.defaultAlias = "Q4020308Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020308Trigger:OnPostDataPrepare()
    print("Q4020308Trigger - OnPostDataPrepare")
    this = self
end

function Q4020308Trigger:OnPostComponentPrepare()
    print("Q4020308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020308Trigger:TriggerIn()
    print("Q4020308Trigger - TriggerIn")
    actorMgr:GetActor("40203"):DisableMainPageWithConfigByQuest(true, "RealDisableAll")
    actorMgr:GetActor("40203"):EnablePlayerInputByQuest(false)
    actorMgr:GetActor("40203"):CallDelayByQuest("delay1", 1, function(arg1)
        actorMgr:GetActor("40203"):CreateNpcWithCameraLookTrigger("Q4020308_N7009_01", 4020308, npcs.Npc7009.id, 0, 30, 4020308, true)
        actorMgr:GetActor("40203"):CallDelayByQuest("delay2", 1, function(arg1)
            actorMgr:GetActor("40203"):EnablePlayerInputByQuest(true)
            actorMgr:GetActor("40203"):DisableMainPageWithConfigByQuest(false, "RealDisableAll")
            this:DestroySelf()
        end)
    end)
end

function Q4020308Trigger:PreTriggerIn()
    print("Q4020308Trigger - PreTriggerIn")
end

function Q4020308Trigger:LightUpTriggerIn()
    print("Q4020308Trigger - LightUpTriggerIn")
end

function Q4020308Trigger:TriggerOut()
    print("Q4020308Trigger - TriggerOut")
end

return Q4020308Trigger
