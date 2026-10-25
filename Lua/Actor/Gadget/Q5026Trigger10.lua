require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger10 = class("Q5026Trigger10", GadgetActorProxy)
Q5026Trigger10.defaultAlias = "Q5026Trigger10"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger10:OnPostDataPrepare()
    print("Q5026Trigger10 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger10:OnPostComponentPrepare()
    print("Q5026Trigger10 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger10:TriggerIn()
    print("Q5026Trigger10 - TriggerIn")
    local actor = actorMgr:GetActor("5026")
    if actor:GetSubQuestState(502611) == 2 then
        if actor:GetQuestVar(502611, 1) == 0 then
            local v = actorMgr:GetActor("5026")
            v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
            v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
            end)
        end
    else
        if actor:GetSubQuestState(502618) == 2 then
            if actor:GetQuestVar(502618, 1) == 0 then
                local v = actorMgr:GetActor("5026")
                v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                    actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                end)
            end
        else
            if actor:GetSubQuestState(502619) == 2 then
                if actor:GetQuestVar(502619, 1) == 0 then
                    local v = actorMgr:GetActor("5026")
                    v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                    v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                        actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                    end)
                end
            else
                if actor:GetSubQuestState(502612) == 2 then
                    if actor:GetQuestVar(502612, 1) == 0 then
                        local v = actorMgr:GetActor("5026")
                        v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                        v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                            actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                        end)
                    end
                else
                    if actor:GetSubQuestState(502613) == 2 then
                        if actor:GetQuestVar(502613, 1) == 0 then
                            local v = actorMgr:GetActor("5026")
                            v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                            v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                                actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                            end)
                        end
                    else
                        if actor:GetSubQuestState(502614) == 2 then
                            if actor:GetQuestVar(502614, 1) == 0 then
                                local v = actorMgr:GetActor("5026")
                                v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                                v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                                    actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                                end)
                            end
                        else
                            if actor:GetSubQuestState(502617) == 2 then
                                if actor:GetQuestVar(502617, 1) == 0 then
                                    local v = actorMgr:GetActor("5026")
                                    v:GetQuestNpcActor(npcs.Npc14699.alias, 5026):DoFreeStyle(4030, true, nil, true, true, false, false)
                                    v:QuestNarratorTask(datas.NarratorWithId_502607, function(arg1)
                                        actorMgr:GetActor("5026"):SetQuestVarByMainId(1, 1)
                                    end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    this:DestroySelf()
end

function Q5026Trigger10:PreTriggerIn()
    print("Q5026Trigger10 - PreTriggerIn")
end

function Q5026Trigger10:LightUpTriggerIn()
    print("Q5026Trigger10 - LightUpTriggerIn")
end

function Q5026Trigger10:TriggerOut()
    print("Q5026Trigger10 - TriggerOut")
end

return Q5026Trigger10
