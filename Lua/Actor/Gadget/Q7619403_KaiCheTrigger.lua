require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619403_KaiCheTrigger = class("Q7619403_KaiCheTrigger", GadgetActorProxy)
Q7619403_KaiCheTrigger.defaultAlias = "Q7619403_KaiCheTrigger"
local Q76194ClientConfig = require("Quest/Client/Q76194ClientConfig")

local this
local subIDs = Q76194ClientConfig.SubIDs
local datas = Q76194ClientConfig.Datas
local npcs = Q76194ClientConfig.Npcs
local points = Q76194ClientConfig.Points

function Q7619403_KaiCheTrigger:OnPostDataPrepare()
    print("Q7619403_KaiCheTrigger - OnPostDataPrepare")
    this = self
end

function Q7619403_KaiCheTrigger:OnPostComponentPrepare()
    print("Q7619403_KaiCheTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76194)
end

function Q7619403_KaiCheTrigger:TriggerIn()
    print("Q7619403_KaiCheTrigger - TriggerIn")
    actorMgr:GetActor("76194"):QuestNarratorTask(datas.NarratorWithId_7619401, nil)
    actorMgr:GetActor("76194"):EnterSceneLookCamera({x = 1695.729, y = 200.257, z = 10278.12}, 0, 2, false, false)
    if actorMgr:GetActor("76194"):GetQuestGlobalVar(7619401) == 0 then
        actorMgr:GetActor("76194"):CallDelayByQuest("7619403DelayTrigger", 3, function(arg1)
            actorMgr:GetActor("76194"):AfterMainPageActiveSafeCall(function(arg1)
                actorMgr:GetActor("76194"):ShowTutorialDialog(2655, nil)
            end)
        end)
    end

    this:DestroySelf()
end

function Q7619403_KaiCheTrigger:PreTriggerIn()
    print("Q7619403_KaiCheTrigger - PreTriggerIn")
end

function Q7619403_KaiCheTrigger:LightUpTriggerIn()
    print("Q7619403_KaiCheTrigger - LightUpTriggerIn")
end

function Q7619403_KaiCheTrigger:TriggerOut()
    print("Q7619403_KaiCheTrigger - TriggerOut")
end

return Q7619403_KaiCheTrigger
