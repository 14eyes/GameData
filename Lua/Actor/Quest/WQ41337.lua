require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41337 = class("Quest41337", QuestActorProxy)
Quest41337.defaultAlias = "Quest41337"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41337:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41337:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133711"] = self.OnSubStart4133711,
        ["4133701"] = self.OnSubStart4133701,
        ["4133702"] = self.OnSubStart4133702,
        ["4133703"] = self.OnSubStart4133703,
        ["4133704"] = self.OnSubStart4133704,
        ["4133705"] = self.OnSubStart4133705,
        ["4133706"] = self.OnSubStart4133706,
        ["4133712"] = self.OnSubStart4133712,
        ["4133707"] = self.OnSubStart4133707,
        ["4133713"] = self.OnSubStart4133713,
        ["4133708"] = self.OnSubStart4133708,
        ["4133714"] = self.OnSubStart4133714,
        ["4133709"] = self.OnSubStart4133709,
        ["4133715"] = self.OnSubStart4133715,
        ["4133710"] = self.OnSubStart4133710
    }
end

function Quest41337:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133711"] = self.OnSubFinish4133711,
        ["4133701"] = self.OnSubFinish4133701,
        ["4133702"] = self.OnSubFinish4133702,
        ["4133703"] = self.OnSubFinish4133703,
        ["4133704"] = self.OnSubFinish4133704,
        ["4133705"] = self.OnSubFinish4133705,
        ["4133706"] = self.OnSubFinish4133706,
        ["4133712"] = self.OnSubFinish4133712,
        ["4133707"] = self.OnSubFinish4133707,
        ["4133713"] = self.OnSubFinish4133713,
        ["4133708"] = self.OnSubFinish4133708,
        ["4133714"] = self.OnSubFinish4133714,
        ["4133709"] = self.OnSubFinish4133709,
        ["4133715"] = self.OnSubFinish4133715,
        ["4133710"] = self.OnSubFinish4133710
    }
end

function Quest41337:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133711"] = self.OnSubFailed4133711,
        ["4133701"] = self.OnSubFailed4133701,
        ["4133702"] = self.OnSubFailed4133702,
        ["4133703"] = self.OnSubFailed4133703,
        ["4133704"] = self.OnSubFailed4133704,
        ["4133705"] = self.OnSubFailed4133705,
        ["4133706"] = self.OnSubFailed4133706,
        ["4133712"] = self.OnSubFailed4133712,
        ["4133707"] = self.OnSubFailed4133707,
        ["4133713"] = self.OnSubFailed4133713,
        ["4133708"] = self.OnSubFailed4133708,
        ["4133714"] = self.OnSubFailed4133714,
        ["4133709"] = self.OnSubFailed4133709,
        ["4133715"] = self.OnSubFailed4133715,
        ["4133710"] = self.OnSubFailed4133710
    }
end

function Quest41337:Start()
    print("Start")
end

function Quest41337:OnDestroy()
    print("OnDestroy")
end

function Quest41337:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41337:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41337:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc240001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc207901Data.alias, 3)
    self:NotifyTo("Npc2400", 0, true)
    self:NotifyTo("Npc2418", 0, true)
    self:NotifyTo("Npc2079", 0, true)
    local actor = actorMgr:GetActor(datas.Q4133701Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q4133705Trigger_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest41337:HideSunyu()
    print("HideSunyu")
    self:NotifyTo("Npc2400", 1, true)
    self:NotifyTo("Npc2418", 1, true)
end

function Quest41337:HideZhiruo()
    print("HideZhiruo")
    self:NotifyTo("Npc2079", 1, true)
end

function Quest41337:ZhiruoWalk1()
    local questNpcActor = self:GetQuestNpcActor("Npc207901")
    questNpcActor:EnableInteraction(false)
    self:NpcWalkToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "Q41337Zhiruo1").pos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41337Zhiruo1").rot))
        arg1:EnableInteraction(true)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4133707)
        end
    end)
end

function Quest41337:ZhiruoWalk2()
    local questNpcActor = self:GetQuestNpcActor("Npc207901")
    questNpcActor:EnableInteraction(false)
    self:NpcRunToTaskEasy(questNpcActor, sceneData:GetDummyPoint(3, "Q41337Zhiruo2").pos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41337Zhiruo1").rot))
        arg1:EnableInteraction(true)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4133708)
        end
    end)
end

function Quest41337:ZhiruoWalk3()
    local questNpcActor = self:GetQuestNpcActor("Npc207901")
    questNpcActor:EnableInteraction(false)
    self:NpcWalkToTask(questNpcActor, sceneData:GetDummyPoint(3, "Q41337Zhiruo3").pos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41337Zhiruo3").rot))
        arg1:EnableInteraction(true)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4133709)
        end
    end, nil, nil, function(arg1)
        arg1:SyncPos(2)
    end)
end

function Quest41337:ShowSunyu()
    print("ShowSunyu")
    self:NotifyTo("Npc2400", 0, true)
    self:NotifyTo("Npc2418", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc240001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241801Data.alias, 3)
end

function Quest41337:ShowZhiruo()
    print("ShowZhiruo")
    self:NotifyTo("Npc2079", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc207901Data.alias, 3)
end

function Quest41337:NarratorAfterZhiruo()
    print("NarratorAfterZhiruo")
    self:NarratorOnlyTask(datas.NarratorAfter, nil, "Story")
end

function Quest41337:OnSubStart4133711(arg1)
    print("OnSubStart4133711")
end

function Quest41337:OnSubFinish4133711(arg1)
    print("OnSubFinish4133711")
end

function Quest41337:OnSubFailed4133711(arg1)
    print("OnSubFailed4133711")
end

function Quest41337:OnSubStart4133701(arg1)
    print("OnSubStart4133701")
    self:CreateQuestNpc(arg1, npcs.Npc240001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc241801Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q4133701Trigger_.alias, datas.Q4133701Trigger_.script, datas.Q4133701Trigger_.id, 0, datas.Q4133701Trigger_.point.pos, datas.Q4133701Trigger_.point.rot, true, false, 3)
    self:HideSunyu()
end

function Quest41337:OnSubFinish4133701(arg1)
    print("OnSubFinish4133701")
end

function Quest41337:OnSubFailed4133701(arg1)
    print("OnSubFailed4133701")
end

function Quest41337:OnSubStart4133702(arg1)
    print("OnSubStart4133702")
    self:HideSunyu()
end

function Quest41337:OnSubFinish4133702(arg1)
    print("OnSubFinish4133702")
end

function Quest41337:OnSubFailed4133702(arg1)
    print("OnSubFailed4133702")
end

function Quest41337:OnSubStart4133703(arg1)
    print("OnSubStart4133703")
    self:HideSunyu()
end

function Quest41337:OnSubFinish4133703(arg1)
    print("OnSubFinish4133703")
end

function Quest41337:OnSubFailed4133703(arg1)
    print("OnSubFailed4133703")
end

function Quest41337:OnSubStart4133704(arg1)
    print("OnSubStart4133704")
    self:HideSunyu()
end

function Quest41337:OnSubFinish4133704(arg1)
    print("OnSubFinish4133704")
end

function Quest41337:OnSubFailed4133704(arg1)
    print("OnSubFailed4133704")
end

function Quest41337:OnSubStart4133705(arg1)
    print("OnSubStart4133705")
    self:CreateQuestNpc(arg1, npcs.Npc207901Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q4133705Trigger_.alias, datas.Q4133705Trigger_.script, datas.Q4133705Trigger_.id, 0, datas.Q4133705Trigger_.point.pos, datas.Q4133705Trigger_.point.rot, true, false, 3)
    self:HideSunyu()
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133705(arg1)
    print("OnSubFinish4133705")
    self:ShowSunyu()
    self:NarratorOnlyTask(datas.NarratorTable, nil, "Tag")
end

function Quest41337:OnSubFailed4133705(arg1)
    print("OnSubFailed4133705")
end

function Quest41337:OnSubStart4133706(arg1)
    print("OnSubStart4133706")
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133706(arg1)
    print("OnSubFinish4133706")
end

function Quest41337:OnSubFailed4133706(arg1)
    print("OnSubFailed4133706")
end

function Quest41337:OnSubStart4133712(arg1)
    print("OnSubStart4133712")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1.0, 0.5, nil, function(arg1_2)
            arg1_2:UnSpawn(gadgets.Gadget70800017Data.alias)
            arg1_2:DelaySpawnGadget(arg1, gadgets.Gadget70800017Data.id, 1, 0)
            arg1_2:FinishQuestID(false, 4133712)
        end)
    end)

    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133712(arg1)
    print("OnSubFinish4133712")
end

function Quest41337:OnSubFailed4133712(arg1)
    print("OnSubFailed4133712")
end

function Quest41337:OnSubStart4133707(arg1)
    print("OnSubStart4133707")
    self:CallDelay(1.5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:ZhiruoWalk1()
        end)
    end)

    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133707(arg1)
    print("OnSubFinish4133707")
end

function Quest41337:OnSubFailed4133707(arg1)
    print("OnSubFailed4133707")
end

function Quest41337:OnSubStart4133713(arg1)
    print("OnSubStart4133713")
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133713(arg1)
    print("OnSubFinish4133713")
end

function Quest41337:OnSubFailed4133713(arg1)
    print("OnSubFailed4133713")
end

function Quest41337:OnSubStart4133708(arg1)
    print("OnSubStart4133708")
    self:ZhiruoWalk2()
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133708(arg1)
    print("OnSubFinish4133708")
end

function Quest41337:OnSubFailed4133708(arg1)
    print("OnSubFailed4133708")
end

function Quest41337:OnSubStart4133714(arg1)
    print("OnSubStart4133714")
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133714(arg1)
    print("OnSubFinish4133714")
end

function Quest41337:OnSubFailed4133714(arg1)
    print("OnSubFailed4133714")
end

function Quest41337:OnSubStart4133709(arg1)
    print("OnSubStart4133709")
    self:ZhiruoWalk3()
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133709(arg1)
    print("OnSubFinish4133709")
end

function Quest41337:OnSubFailed4133709(arg1)
    print("OnSubFailed4133709")
end

function Quest41337:OnSubStart4133715(arg1)
    print("OnSubStart4133715")
    self:HideZhiruo()
end

function Quest41337:OnSubFinish4133715(arg1)
    print("OnSubFinish4133715")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowZhiruo, self.NarratorAfterZhiruo, nil, "")
end

function Quest41337:OnSubFailed4133715(arg1)
    print("OnSubFailed4133715")
end

function Quest41337:OnSubStart4133710(arg1)
    print("OnSubStart4133710")
    self:CreateQuestNpc(arg1, npcs.Npc240001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc241801Data.id, 2)
    self:HideSunyu()
end

function Quest41337:OnSubFinish4133710(arg1)
    print("OnSubFinish4133710")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowSunyu, nil, nil, "")
end

function Quest41337:OnSubFailed4133710(arg1)
    print("OnSubFailed4133710")
end

return Quest41337
