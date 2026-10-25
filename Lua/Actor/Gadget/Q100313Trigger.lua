require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100313Trigger = class("Q100313Trigger", GadgetActorProxy)
Q100313Trigger.defaultAlias = "Q100313Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

util.do_require("Quest/Share/Q1003ShareConfig")
local v = XiaomingData
function Q100313Trigger:OnPostDataPrepare() end

function Q100313Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100313Trigger:TriggerIn()
    print("IN Q100313Trigger")
    actorMgr:GetActor(Q1003ClientConfig.ActorAlias):TransmitPlayerByQuestId(100313, 1, function(arg1)
        local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
        if actor ~= nil then
            actor.EnterSceneLookCamera(actor, sceneData:GetDummyPoint(3, "Q100315MingRun").pos, 0, 6, true)
        end

        local questNpcActor = actor.GetQuestNpcActor(actor, v.Alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(5010)
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:RunToTask(Q1003ClientConfig.XiaomingData.BornPos15Run, function(arg1)
                local questNpcActor = actor:GetQuestNpcActor(v.Alias)
                if questNpcActor ~= nil then
                    questNpcActor:DoFreeStyle(5010)
                    questNpcActor:DoFreeStateTrigger()
                end

                arg1:CallDelay(1.5, function(arg1)
                    arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
                        local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
                        print("finish100313------------------------------01")
                        if actor ~= nil then
                            print("finish100313------------------------------02")
                            actor:FinishQuestID(false, 100313)
                        end

                        local questNpcActor = actor:GetQuestNpcActor(v.Alias)
                        if questNpcActor ~= nil then
                            arg1:ActionSafeCall(function(arg1)
                                questNpcActor:Destroy(false)
                            end)
                        end
                    end, function(arg1)
                        local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
                        if actor ~= nil then
                            actor:NarratorOnlyTask(Q1003ClientConfig.NarratorFlow5)
                        end
                    end)
                end)
            end)
        end
    end)

    self:DestroySelf()
end

function Q100313Trigger:TriggerOut() end
return Q100313Trigger
