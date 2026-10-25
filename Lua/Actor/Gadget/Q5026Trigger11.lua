require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger11 = class("Q5026Trigger11", GadgetActorProxy)
Q5026Trigger11.defaultAlias = "Q5026Trigger11"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger11:OnPostDataPrepare()
    print("Q5026Trigger11 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger11:OnPostComponentPrepare()
    print("Q5026Trigger11 - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger11:TriggerIn()
    print("Q5026Trigger11 - TriggerIn")
    local actor = actorMgr:GetActor("5026")
    if actor:GetSubQuestState(502611) == 2 then
        if actor:GetQuestVar(502611, 2) == 0 then
            local v = actorMgr:GetActor("5026")
            v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
            v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
            end)
        end
    else
        if actor:GetSubQuestState(502618) == 2 then
            if actor:GetQuestVar(502618, 2) == 0 then
                local v = actorMgr:GetActor("5026")
                v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                    actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
                end)
            end
        else
            if actor:GetSubQuestState(502619) == 2 then
                if actor:GetQuestVar(502619, 2) == 0 then
                    local v = actorMgr:GetActor("5026")
                    v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                    v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                        actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
                    end)
                end
            else
                if actor:GetSubQuestState(502612) == 2 then
                    if actor:GetQuestVar(502612, 2) == 0 then
                        local v = actorMgr:GetActor("5026")
                        v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                        v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                            actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
                        end)
                    end
                else
                    if actor:GetSubQuestState(502613) == 2 then
                        if actor:GetQuestVar(502613, 2) == 0 then
                            local v = actorMgr:GetActor("5026")
                            v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                            v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                                actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
                            end)
                        end
                    else
                        if actor:GetSubQuestState(502614) == 2 then
                            if actor:GetQuestVar(502614, 2) == 0 then
                                local v = actorMgr:GetActor("5026")
                                v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                                v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                                    actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
                                end)
                            end
                        else
                            if actor:GetSubQuestState(502617) == 2 then
                                if actor:GetQuestVar(502617, 2) == 0 then
                                    local v = actorMgr:GetActor("5026")
                                    v:GetQuestNpcActor(npcs.Npc6231.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                                    v:QuestNarratorTask(datas.NarratorWithId_502608, function(arg1)
                                        actorMgr:GetActor("5026"):SetQuestVarByMainId(2, 1)
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

function Q5026Trigger11:PreTriggerIn()
    print("Q5026Trigger11 - PreTriggerIn")
end

function Q5026Trigger11:LightUpTriggerIn()
    print("Q5026Trigger11 - LightUpTriggerIn")
end

function Q5026Trigger11:TriggerOut()
    print("Q5026Trigger11 - TriggerOut")
end

return Q5026Trigger11
