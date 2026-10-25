require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020305Trigger = class("Q4020305Trigger", GadgetActorProxy)
Q4020305Trigger.defaultAlias = "Q4020305Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020305Trigger:OnPostDataPrepare()
    print("Q4020305Trigger - OnPostDataPrepare")
    this = self
end

function Q4020305Trigger:OnPostComponentPrepare()
    print("Q4020305Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020305Trigger:TriggerIn()
    print("Q4020305Trigger - TriggerIn")
    actorMgr:GetActor("40203"):DisableMainPageWithConfigByQuest(true, "RealDisableAll")
    actorMgr:GetActor("40203"):EnablePlayerInputByQuest(false)
    actorMgr:GetActor("40203"):CallDelayByQuest("delay1", 1, function(arg1)
        actorMgr:GetActor("40203"):CreateNpcWithCameraLookTrigger("Q4020305_N1313_01", 4020305, npcs.Npc1313.id, 0, 30, 4020305, true)
        actorMgr:GetActor("40203"):CallDelayByQuest("delay2", 1, function(arg1)
            actorMgr:GetActor("40203"):EnablePlayerInputByQuest(true)
            actorMgr:GetActor("40203"):DisableMainPageWithConfigByQuest(false, "RealDisableAll")
            this:DestroySelf()
        end)
    end)
end

function Q4020305Trigger:PreTriggerIn()
    print("Q4020305Trigger - PreTriggerIn")
end

function Q4020305Trigger:LightUpTriggerIn()
    print("Q4020305Trigger - LightUpTriggerIn")
end

function Q4020305Trigger:TriggerOut()
    print("Q4020305Trigger - TriggerOut")
end

return Q4020305Trigger
