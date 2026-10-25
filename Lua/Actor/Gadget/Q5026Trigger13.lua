require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger13 = class("Q5026Trigger13", GadgetActorProxy)
Q5026Trigger13.defaultAlias = "Q5026Trigger13"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger13:OnPostDataPrepare()
    print("Q5026Trigger13 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger13:OnPostComponentPrepare()
    print("Q5026Trigger13 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger13:TriggerIn()
    print("Q5026Trigger13 - TriggerIn")
    local actor = actorMgr:GetActor("5026")
    if actor:GetSubQuestState(502611) == 2 then
        if actor:GetQuestVar(502611, 4) == 0 then
            local v = actorMgr:GetActor("5026")
            v:GetQuestNpcActor(npcs.Npc6230.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
            v:QuestNarratorTask(datas.NarratorWithId_502609, function(arg1)
                actorMgr:GetActor("5026"):SetQuestVarByMainId(4, 1)
            end)
        end
    else
        if actor:GetSubQuestState(502618) == 2 then
            if actor:GetQuestVar(502618, 4) == 0 then
                local v = actorMgr:GetActor("5026")
                v:GetQuestNpcActor(npcs.Npc6230.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                v:QuestNarratorTask(datas.NarratorWithId_502609, function(arg1)
                    actorMgr:GetActor("5026"):SetQuestVarByMainId(4, 1)
                end)
            end
        else
            if actor:GetSubQuestState(502619) == 2 then
                if actor:GetQuestVar(502619, 4) == 0 then
                    local v = actorMgr:GetActor("5026")
                    v:GetQuestNpcActor(npcs.Npc6230.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                    v:QuestNarratorTask(datas.NarratorWithId_502609, function(arg1)
                        actorMgr:GetActor("5026"):SetQuestVarByMainId(4, 1)
                    end)
                end
            else
                if actor:GetSubQuestState(502612) == 2 then
                    if actor:GetQuestVar(502612, 4) == 0 then
                        local v = actorMgr:GetActor("5026")
                        v:GetQuestNpcActor(npcs.Npc6230.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                        v:QuestNarratorTask(datas.NarratorWithId_502609, function(arg1)
                            actorMgr:GetActor("5026"):SetQuestVarByMainId(4, 1)
                        end)
                    end
                else
                    if actor:GetSubQuestState(502613) == 2 then
                        if actor:GetQuestVar(502613, 4) == 0 then
                            local v = actorMgr:GetActor("5026")
                            v:GetQuestNpcActor(npcs.Npc6230.alias, 5026):DoFreeStyle(1190, true, nil, true, true, false, true)
                            v:QuestNarratorTask(datas.NarratorWithId_502609, function(arg1)
                                actorMgr:GetActor("5026"):SetQuestVarByMainId(4, 1)
                            end)
                        end
                    end
                end
            end
        end
    end

    this:DestroySelf()
end

function Q5026Trigger13:PreTriggerIn()
    print("Q5026Trigger13 - PreTriggerIn")
end

function Q5026Trigger13:LightUpTriggerIn()
    print("Q5026Trigger13 - LightUpTriggerIn")
end

function Q5026Trigger13:TriggerOut()
    print("Q5026Trigger13 - TriggerOut")
end

return Q5026Trigger13
