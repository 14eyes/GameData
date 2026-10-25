require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22038Trigger = class("Q22038Trigger", GadgetActorProxy)
Q22038Trigger.defaultAlias = "Q22038Trigger"
local Q22038ClientConfig = require("Quest/Client/Q22038ClientConfig")

local subIDs = Q22038ClientConfig.SubIDs
local npcs = Q22038ClientConfig.Npcs
local datas = Q22038ClientConfig.Datas

function Q22038Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22038Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22038Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("22038")
    local questNpcActor = actor.GetQuestNpcActor(actor, npcs.Npc3011Data.alias, 22038)
    actor.NpcWalkToTaskEasy(actor, questNpcActor, sceneData:GetDummyPoint(1060, "Q22038Walk1").pos, function(arg1)
        local v = actorMgr:GetActor("22038"):GetQuestNpcActor(npcs.Npc3011Data.alias, 22038)
        v:Standby()
        v:DoFreeStateTrigger()
        v:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1060, "Q22038Walk1").rot))
        arg1:NarratorOnlyTask(datas.Reminder0201, function(arg1)
            actor:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(1060, "Q22038Walk2").pos, function(arg1)
                local v = actorMgr:GetActor("22038"):GetQuestNpcActor(npcs.Npc3011Data.alias, 22038)
                v:Standby()
                v:DoFreeStateTrigger()
                v:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1060, "Q22038Walk2").rot))
                arg1:NarratorOnlyTask(datas.Reminder0202, function(arg1)
                    actor:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(1060, "Q22038Walk3").pos, function(arg1)
                        local v = actorMgr:GetActor("22038"):GetQuestNpcActor(npcs.Npc3011Data.alias, 22038)
                        v:Standby()
                        v:DoFreeStateTrigger()
                        v:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1060, "Q22038Walk3").rot))
                        arg1:NarratorOnlyTask(datas.Reminder0203, function(arg1)
                            actor:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(1060, "Q22038Nakanishi").pos, function(arg1)
                                local actor = actorMgr:GetActor("22038")
                                local questNpcActor = actor:GetQuestNpcActor(npcs.Npc3011Data.alias, 22038)
                                questNpcActor:Standby()
                                questNpcActor:DoFreeStateTrigger()
                                questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1060, "Q22038Nakanishi").rot))
                                actor:FinishQuestID(false, 2203802)
                            end)
                        end, "")
                    end)
                end, "")
            end)
        end, "")
    end)

    self:DestroySelf()
end

function Q22038Trigger:TriggerOut()
    print("TriggerOut")
end

return Q22038Trigger
