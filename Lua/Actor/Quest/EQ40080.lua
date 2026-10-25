require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40080 = class("Quest40080", QuestActorProxy)
Quest40080.defaultAlias = "Quest40080"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40080:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008001"] = self.OnSubStart4008001,
        ["4008002"] = self.OnSubStart4008002,
        ["4008003"] = self.OnSubStart4008003,
        ["4008004"] = self.OnSubStart4008004,
        ["4008007"] = self.OnSubStart4008007,
        ["4008005"] = self.OnSubStart4008005,
        ["4008006"] = self.OnSubStart4008006,
        ["4008008"] = self.OnSubStart4008008
    }
end

function Quest40080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008001"] = self.OnSubFinish4008001,
        ["4008002"] = self.OnSubFinish4008002,
        ["4008003"] = self.OnSubFinish4008003,
        ["4008004"] = self.OnSubFinish4008004,
        ["4008007"] = self.OnSubFinish4008007,
        ["4008005"] = self.OnSubFinish4008005,
        ["4008006"] = self.OnSubFinish4008006,
        ["4008008"] = self.OnSubFinish4008008
    }
end

function Quest40080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40080:Start()
    print("Start")
end

function Quest40080:OnDestroy()
    print("OnDestroy")
end

function Quest40080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40080:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc1062Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1537Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30250Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
end

function Quest40080:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4008004 then
        actorUtils.FinishQuestID(false, 4008007)
    elseif arg1 == 4008006 then
        actorUtils.FinishQuestID(false, 4008008)
    elseif arg1 == 400800401 then
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    end
end

function Quest40080:OnSubStart4008001(arg1)
    print("OnSubStart4008001")
    actorMgr:DestroyNpcActorByAlias("Npc102719068")
end

function Quest40080:OnSubFinish4008001(arg1)
    print("OnSubFinish4008001")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4008001)
end

function Quest40080:OnSubStart4008002(arg1)
    print("OnSubStart4008002")
    self:CreateQuestNpc(arg1, npcs.Npc1062Data.id, 3)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTrigger("Q4008002NPCTrigger", 4008002, 1019, 2, 10)
    end)
end

function Quest40080:OnSubFinish4008002(arg1)
    print("OnSubFinish4008002")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 1004)
end

function Quest40080:OnSubStart4008003(arg1)
    print("OnSubStart4008003")
    self:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 3)
    self:CreateQuestNpcWithTrigger("Q4008003NPCTrigger", 4008003, 10090, 2, 12)
    if self:GetQuestVar(4008003, 4) ~= 1 then
        self:CreateQuestNpc(arg1, npcs.Npc1062Data.id, 1)
    end
end

function Quest40080:OnSubFinish4008003(arg1)
    print("OnSubFinish4008003")
    self:SafeDestroyQuestNpc(npcs.Npc1062Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
end

function Quest40080:OnSubStart4008004(arg1)
    print("OnSubStart4008004")
    self:CreateQuestNpcWithTrigger("Q4008004NPCTrigger", 4008004, 1001, 2, 12)
end

function Quest40080:OnSubFinish4008004(arg1)
    print("OnSubFinish4008004")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    globalActor:LeaveAllWeather()
end

function Quest40080:OnSubStart4008007(arg1)
    print("OnSubStart4008007")
end

function Quest40080:OnSubFinish4008007(arg1)
    print("OnSubFinish4008007")
end

function Quest40080:OnSubStart4008005(arg1)
    print("OnSubStart4008005")
    self:CreateQuestNpc(arg1, npcs.RazorData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.RazorData.alias):DisableInteeHeadCtrl(true)
end

function Quest40080:OnSubFinish4008005(arg1)
    print("OnSubFinish4008005")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4008002)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc10090Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.RazorData.alias):DisableInteeHeadCtrl(false)
end

function Quest40080:OnSubStart4008006(arg1)
    print("OnSubStart4008006")
    self:CreateQuestNpc(arg1, npcs.RazorData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30274Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc1537Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc30173Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc30240Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc1539Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc30250Data.id, 10)
    self:CreateQuestNpc(arg1, npcs.Npc1028Data.id, 11)
    self:CreateQuestNpcWithTrigger("Q4008006NPCTrigger", 4008006, 1007, 4, 30)
end

function Quest40080:OnSubFinish4008006(arg1)
    print("OnSubFinish4008006")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1537Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30250Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
end

function Quest40080:OnSubStart4008008(arg1)
    print("OnSubStart4008008")
end

function Quest40080:OnSubFinish4008008(arg1)
    print("OnSubFinish4008008")
end

return Quest40080
