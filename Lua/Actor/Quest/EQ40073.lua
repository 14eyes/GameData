require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40073 = class("Quest40073", QuestActorProxy)
Quest40073.defaultAlias = "Quest40073"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40073:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007302"] = self.OnSubStart4007302,
        ["4007321"] = self.OnSubStart4007321,
        ["4007303"] = self.OnSubStart4007303,
        ["4007322"] = self.OnSubStart4007322,
        ["4007304"] = self.OnSubStart4007304,
        ["4007305"] = self.OnSubStart4007305,
        ["4007306"] = self.OnSubStart4007306,
        ["4007307"] = self.OnSubStart4007307,
        ["4007308"] = self.OnSubStart4007308,
        ["4007309"] = self.OnSubStart4007309,
        ["4007310"] = self.OnSubStart4007310,
        ["4007319"] = self.OnSubStart4007319,
        ["4007312"] = self.OnSubStart4007312,
        ["4007313"] = self.OnSubStart4007313,
        ["4007320"] = self.OnSubStart4007320,
        ["4007314"] = self.OnSubStart4007314,
        ["4007311"] = self.OnSubStart4007311,
        ["4007301"] = self.OnSubStart4007301,
        ["4007315"] = self.OnSubStart4007315,
        ["4007316"] = self.OnSubStart4007316,
        ["4007317"] = self.OnSubStart4007317,
        ["4007318"] = self.OnSubStart4007318
    }
end

function Quest40073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007302"] = self.OnSubFinish4007302,
        ["4007321"] = self.OnSubFinish4007321,
        ["4007303"] = self.OnSubFinish4007303,
        ["4007322"] = self.OnSubFinish4007322,
        ["4007304"] = self.OnSubFinish4007304,
        ["4007305"] = self.OnSubFinish4007305,
        ["4007306"] = self.OnSubFinish4007306,
        ["4007307"] = self.OnSubFinish4007307,
        ["4007308"] = self.OnSubFinish4007308,
        ["4007309"] = self.OnSubFinish4007309,
        ["4007310"] = self.OnSubFinish4007310,
        ["4007319"] = self.OnSubFinish4007319,
        ["4007312"] = self.OnSubFinish4007312,
        ["4007313"] = self.OnSubFinish4007313,
        ["4007320"] = self.OnSubFinish4007320,
        ["4007314"] = self.OnSubFinish4007314,
        ["4007311"] = self.OnSubFinish4007311,
        ["4007301"] = self.OnSubFinish4007301,
        ["4007315"] = self.OnSubFinish4007315,
        ["4007316"] = self.OnSubFinish4007316,
        ["4007317"] = self.OnSubFinish4007317,
        ["4007318"] = self.OnSubFinish4007318
    }
end

function Quest40073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40073:Start()
    print("Start")
end

function Quest40073:OnDestroy()
    print("OnDestroy")
end

function Quest40073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40073:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12630Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12631Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc2601Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc2601Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12663Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 20141)
    actorMgr:DestroyEntityActor("Q4007304_Trigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007305_SafeTrigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007306_Trigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007310_Trigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007311_Trigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007314_Trigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007315_Trigger", 20141, false)
    actorMgr:DestroyEntityActor("Q4007316_NarratorTrigger1", 20141, false)
    actorMgr:DestroyEntityActor("Q4007316_NarratorTrigger2", 20141, false)
    actorMgr:DestroyEntityActor("Q4007316_NarratorTrigger3", 20141, false)
    actorMgr:DestroyEntityActor("Q4007317_Trigger", 20141, false)
    actorMgr:DestroyEntityActor("Q4007319_NarratorTrigger", 20139, false)
    actorMgr:DestroyEntityActor("Q4007319_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4007302_Trigger", 0, false)
end

function Quest40073:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40073:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40073:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest40073:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007321)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 4007320)
    end
end

function Quest40073:OnSubStart4007302(arg1)
    print("OnSubStart4007302")
    self:CreateQuestNpc(arg1, npcs.Npc12630Data.id, 1)
    actorMgr:CreateActorWithPos("Q4007302_Trigger", "Actor/Gadget/Q4007302_Trigger", 70900002, 0, {x = 617.626, y = 230.607, z = -429.399}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40073:OnSubFinish4007302(arg1)
    print("OnSubFinish4007302")
    self:SafeDestroyQuestNpc(npcs.Npc12630Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12631Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40073:OnSubStart4007321(arg1)
    print("OnSubStart4007321")
end

function Quest40073:OnSubFinish4007321(arg1)
    print("OnSubFinish4007321")
end

function Quest40073:OnSubStart4007303(arg1)
    print("OnSubStart4007303")
end

function Quest40073:OnSubFinish4007303(arg1)
    print("OnSubFinish4007303")
    globalActor:PlayerEnterDungeonPoint(19, 1143, 4007303, 1)
end

function Quest40073:OnSubStart4007322(arg1)
    print("OnSubStart4007322")
end

function Quest40073:OnSubFinish4007322(arg1)
    print("OnSubFinish4007322")
end

function Quest40073:OnSubStart4007304(arg1)
    print("OnSubStart4007304")
    self:LevelLoadFinishSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q4007304_Trigger", "Actor/Gadget/Q4007304_Trigger", 70900002, 0, sceneData:GetDummyPoint(20139, "Q4007304_guide").pos, sceneData:GetDummyPoint(20139, "Q4007304_guide").rot, true, false, 20139)
    end)
end

function Quest40073:OnSubFinish4007304(arg1)
    print("OnSubFinish4007304")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20139)
end

function Quest40073:OnSubStart4007305(arg1)
    print("OnSubStart4007305")
    actorMgr:CreateActorWithPos("Q4007305_SafeTrigger", "Actor/Gadget/Q4007305_SafeTrigger", 70900002, 0, {x = -35.904, y = 84.795, z = 20.374}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
end

function Quest40073:OnSubFinish4007305(arg1)
    print("OnSubFinish4007305")
end

function Quest40073:OnSubStart4007306(arg1)
    print("OnSubStart4007306")
    actorMgr:CreateActorWithPos("Q4007306_Trigger", "Actor/Gadget/Q4007306_Trigger", 70900002, 0, sceneData:GetDummyPoint(20139, "Q4007306_guide").pos, sceneData:GetDummyPoint(20139, "Q4007306_guide").rot, true, false, 20139)
end

function Quest40073:OnSubFinish4007306(arg1)
    print("OnSubFinish4007306")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20139)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4007301, nil, 40073)
    end)
end

function Quest40073:OnSubStart4007307(arg1)
    print("OnSubStart4007307")
end

function Quest40073:OnSubFinish4007307(arg1)
    print("OnSubFinish4007307")
    self:NarratorOnlyTaskByData(datas.Narrator_4007303, function(arg1)
        if arg1:CheckSubQuestState(4007308, 3, false) then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007302, nil, 40073)
        end
    end)
end

function Quest40073:OnSubStart4007308(arg1)
    print("OnSubStart4007308")
end

function Quest40073:OnSubFinish4007308(arg1)
    print("OnSubFinish4007308")
    self:NarratorOnlyTaskByData(datas.Narrator_4007304, function(arg1)
        if arg1:CheckSubQuestState(4007307, 3, false) then
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007302, nil, 40073)
        end
    end)
end

function Quest40073:OnSubStart4007309(arg1)
    print("OnSubStart4007309")
end

function Quest40073:OnSubFinish4007309(arg1)
    print("OnSubFinish4007309")
end

function Quest40073:OnSubStart4007310(arg1)
    print("OnSubStart4007310")
    actorMgr:CreateActorWithPos("Q4007310_Trigger", "Actor/Gadget/Q4007310_Trigger", 70900002, 0, {x = 1.136, y = 84.685, z = 22.336}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
end

function Quest40073:OnSubFinish4007310(arg1)
    print("OnSubFinish4007310")
end

function Quest40073:OnSubStart4007319(arg1)
    print("OnSubStart4007319")
    actorMgr:CreateActorWithPos("Q4007319_Trigger", "Actor/Gadget/Q4007319_Trigger", 70900002, 0, {x = 95.424, y = 109.781, z = 22.06}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
    actorMgr:CreateActorWithPos("Q4007319_NarratorTrigger", "Actor/Gadget/Q4007319_NarratorTrigger", 70900002, 0, {x = 88.073, y = 109.719, z = 22.741}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
end

function Quest40073:OnSubFinish4007319(arg1)
    print("OnSubFinish4007319")
    self:NarratorOnlyTaskByData(datas.Narrator_4007306, nil, 40073)
end

function Quest40073:OnSubStart4007312(arg1)
    print("OnSubStart4007312")
end

function Quest40073:OnSubFinish4007312(arg1)
    print("OnSubFinish4007312")
end

function Quest40073:OnSubStart4007313(arg1)
    print("OnSubStart4007313")
    self:CreateQuestNpcWithTrigger("Q4007313_Trigger", 4007313, npcs.Npc12626Data.id, 5, 8)
end

function Quest40073:OnSubFinish4007313(arg1)
    print("OnSubFinish4007313")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20139)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20139)
end

function Quest40073:OnSubStart4007320(arg1)
    print("OnSubStart4007320")
end

function Quest40073:OnSubFinish4007320(arg1)
    print("OnSubFinish4007320")
end

function Quest40073:OnSubStart4007314(arg1)
    print("OnSubStart4007314")
    actorMgr:CreateActorWithPos("Q4007314_Trigger", "Actor/Gadget/Q4007314_Trigger", 70900002, 0, {x = 115.349, y = 141.992, z = 22.18}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
end

function Quest40073:OnSubFinish4007314(arg1)
    print("OnSubFinish4007314")
    self:NarratorOnlyTaskByData(datas.Narrator_4007307, nil, 40073)
end

function Quest40073:OnSubStart4007311(arg1)
    print("OnSubStart4007311")
    actorMgr:CreateActorWithPos("Q4007311_Trigger", "Actor/Gadget/Q4007311_Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20139)
end

function Quest40073:OnSubFinish4007311(arg1)
    print("OnSubFinish4007311")
end

function Quest40073:OnSubStart4007301(arg1)
    print("OnSubStart4007301")
    globalActor:PlayerEnterDungeonPoint(21, 1145, 4007301, 1)
end

function Quest40073:OnSubFinish4007301(arg1)
    print("OnSubFinish4007301")
end

function Quest40073:OnSubStart4007315(arg1)
    print("OnSubStart4007315")
    self:CreateQuestNpc(arg1, npcs.Npc12663Data.id, 5)
    actorMgr:CreateActorWithPos("Q4007315_Trigger", "Actor/Gadget/Q4007315_Trigger", 70900002, 0, {x = 21.046, y = 0.0, z = -6.689}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20141)
end

function Quest40073:OnSubFinish4007315(arg1)
    print("OnSubFinish4007315")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20141)
end

function Quest40073:OnSubStart4007316(arg1)
    print("OnSubStart4007316")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12663Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc10012Data.id, 2)
    actorMgr:CreateActorWithPos("Q4007316_NarratorTrigger1", "Actor/Gadget/Q4007316_NarratorTrigger1", 70900002, 0, {x = 50.244, y = 0.0, z = -11.029}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20141)
    actorMgr:CreateActorWithPos("Q4007316_NarratorTrigger2", "Actor/Gadget/Q4007316_NarratorTrigger2", 70900002, 0, {x = 18.421, y = 0.0, z = 51.905}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20141)
    actorMgr:CreateActorWithPos("Q4007316_NarratorTrigger3", "Actor/Gadget/Q4007316_NarratorTrigger3", 70900002, 0, {x = -10.025, y = 0.0, z = -1.236}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20141)
end

function Quest40073:OnSubFinish4007316(arg1)
    print("OnSubFinish4007316")
    if actorMgr:GetActor("Q4007316_NarratorTrigger1") ~= nil then
        self:ActorDestroy("Q4007316_NarratorTrigger1")
        if actorMgr:GetActor("Q4007316_NarratorTrigger2") ~= nil then
            self:ActorDestroy("Q4007316_NarratorTrigger2")
            if actorMgr:GetActor("Q4007316_NarratorTrigger3") ~= nil then
                self:ActorDestroy("Q4007316_NarratorTrigger3")
            end
        end
    end
end

function Quest40073:OnSubStart4007317(arg1)
    print("OnSubStart4007317")
    actorMgr:CreateActorWithPos("Q4007317_Trigger", "Actor/Gadget/Q4007317_Trigger", 70900002, 0, {x = 26.285, y = 17.032, z = 22.58}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20141)
end

function Quest40073:OnSubFinish4007317(arg1)
    print("OnSubFinish4007317")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc2601Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc12663Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 20141)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest40073:OnSubStart4007318(arg1)
    print("OnSubStart4007318")
    self:CreateQuestNpcWithTriggerBlack("Q4007318_Trigger", 4007318, npcs.Npc2601Data.id, 5, 8, 1)
end

function Quest40073:OnSubFinish4007318(arg1)
    print("OnSubFinish4007318")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20141)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc2601Data.alias, 20141)
    self:CallDelay(6, function(arg1)
        actorUtils.ShowContext("SummerTimeV2StagePage", 3)
    end)
end

return Quest40073
