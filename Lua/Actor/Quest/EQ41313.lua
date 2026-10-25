require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41313 = class("Quest41313", QuestActorProxy)
Quest41313.defaultAlias = "Quest41313"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41313:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41313:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4131301"] = self.OnSubStart4131301,
        ["4131302"] = self.OnSubStart4131302,
        ["4131303"] = self.OnSubStart4131303,
        ["4131304"] = self.OnSubStart4131304,
        ["4131305"] = self.OnSubStart4131305,
        ["4131306"] = self.OnSubStart4131306,
        ["4131307"] = self.OnSubStart4131307,
        ["4131308"] = self.OnSubStart4131308,
        ["4131309"] = self.OnSubStart4131309,
        ["4131310"] = self.OnSubStart4131310,
        ["4131311"] = self.OnSubStart4131311,
        ["4131312"] = self.OnSubStart4131312,
        ["4131313"] = self.OnSubStart4131313,
        ["4131314"] = self.OnSubStart4131314,
        ["4131320"] = self.OnSubStart4131320,
        ["4131315"] = self.OnSubStart4131315,
        ["4131319"] = self.OnSubStart4131319,
        ["4131316"] = self.OnSubStart4131316,
        ["4131317"] = self.OnSubStart4131317,
        ["4131318"] = self.OnSubStart4131318
    }
end

function Quest41313:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4131301"] = self.OnSubFinish4131301,
        ["4131302"] = self.OnSubFinish4131302,
        ["4131303"] = self.OnSubFinish4131303,
        ["4131304"] = self.OnSubFinish4131304,
        ["4131305"] = self.OnSubFinish4131305,
        ["4131306"] = self.OnSubFinish4131306,
        ["4131307"] = self.OnSubFinish4131307,
        ["4131308"] = self.OnSubFinish4131308,
        ["4131309"] = self.OnSubFinish4131309,
        ["4131310"] = self.OnSubFinish4131310,
        ["4131311"] = self.OnSubFinish4131311,
        ["4131312"] = self.OnSubFinish4131312,
        ["4131313"] = self.OnSubFinish4131313,
        ["4131314"] = self.OnSubFinish4131314,
        ["4131320"] = self.OnSubFinish4131320,
        ["4131315"] = self.OnSubFinish4131315,
        ["4131319"] = self.OnSubFinish4131319,
        ["4131316"] = self.OnSubFinish4131316,
        ["4131317"] = self.OnSubFinish4131317,
        ["4131318"] = self.OnSubFinish4131318
    }
end

function Quest41313:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4131301"] = self.OnSubFailed4131301,
        ["4131302"] = self.OnSubFailed4131302,
        ["4131303"] = self.OnSubFailed4131303,
        ["4131304"] = self.OnSubFailed4131304,
        ["4131305"] = self.OnSubFailed4131305,
        ["4131306"] = self.OnSubFailed4131306,
        ["4131307"] = self.OnSubFailed4131307,
        ["4131308"] = self.OnSubFailed4131308,
        ["4131309"] = self.OnSubFailed4131309,
        ["4131310"] = self.OnSubFailed4131310,
        ["4131311"] = self.OnSubFailed4131311,
        ["4131312"] = self.OnSubFailed4131312,
        ["4131313"] = self.OnSubFailed4131313,
        ["4131314"] = self.OnSubFailed4131314,
        ["4131320"] = self.OnSubFailed4131320,
        ["4131315"] = self.OnSubFailed4131315,
        ["4131319"] = self.OnSubFailed4131319,
        ["4131316"] = self.OnSubFailed4131316,
        ["4131317"] = self.OnSubFailed4131317,
        ["4131318"] = self.OnSubFailed4131318
    }
end

function Quest41313:Start()
    print("Start")
end

function Quest41313:OnDestroy()
    print("OnDestroy")
end

function Quest41313:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41313:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41313:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc220201Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:NotifyTo(npcs.Npc2208Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2202Data.alias, 0, true)
        self:UnSpawn(gadgets.Gadget70710304Data.alias)
    end)
end

function Quest41313:DestoryPaimon()
    print("DestoryPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest41313:WeatherControl()
    print("Creat Weather Control Area")
    local actor = actorMgr:GetActor(datas.Q41313Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:CallDelay(1, function()
        actorMgr:CreateActorWithPos(datas.Q41313Trigger5_.alias, datas.Q41313Trigger5_.script, datas.Q41313Trigger5_.id, 0, datas.Q41313Trigger5_.point.pos, datas.Q41313Trigger5_.point.rot, true, false, 3)
    end)
end

function Quest41313:OnSubStart4131301(arg1)
    print("OnSubStart4131301")
    self:WeatherControl()
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
    actorMgr:CreateActorWithPos(datas.Q41313Trigger2_.alias, datas.Q41313Trigger2_.script, datas.Q41313Trigger2_.id, 0, datas.Q41313Trigger2_.point.pos, datas.Q41313Trigger2_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.XiaoData.alias):TurnTo(M.Euler2DirXZ({x = 0, y = 43.97, z = 0}))
end

function Quest41313:OnSubFinish4131301(arg1)
    print("OnSubFinish4131301")
end

function Quest41313:OnSubFailed4131301(arg1)
    print("OnSubFailed4131301")
end

function Quest41313:OnSubStart4131302(arg1)
    print("OnSubStart4131302")
    self:WeatherControl()
end

function Quest41313:OnSubFinish4131302(arg1)
    print("OnSubFinish4131302")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:CallDelay(0.5, function()
            self:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)
    end)
end

function Quest41313:OnSubFailed4131302(arg1)
    print("OnSubFailed4131302")
end

function Quest41313:OnSubStart4131303(arg1)
    print("OnSubStart4131303")
    self.WeatherControl(self)
    self.CreateQuestNpc(self, arg1, npcs.Npc220201Data.id, 0)
    self.CreateQuestNpc(self, arg1, npcs.Npc220801Data.id, 0)
    self.ActionSafeCall(self, function()
        self:NotifyTo(npcs.Npc2208Data.alias, 1, true)
        self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    end)
end

function Quest41313:OnSubFinish4131303(arg1)
    print("OnSubFinish4131303")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc220201Data.alias, 3)
        self:NotifyTo(npcs.Npc2208Data.alias, 0, true)
    end)
end

function Quest41313:OnSubFailed4131303(arg1)
    print("OnSubFailed4131303")
end

function Quest41313:OnSubStart4131304(arg1)
    print("OnSubStart4131304")
    self:WeatherControl()
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710304Data.id, 1)
end

function Quest41313:OnSubFinish4131304(arg1)
    print("OnSubFinish4131304")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
    self:EnterSceneLookCamera({x = 900.17, y = 216.25, z = 323.34}, 0, 3, true, false)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest41313:OnSubFailed4131304(arg1)
    print("OnSubFailed4131304")
end

function Quest41313:OnSubStart4131305(arg1)
    print("OnSubStart4131305")
    self:WeatherControl()
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710304Data.id, 1)
end

function Quest41313:OnSubFinish4131305(arg1)
    print("OnSubFinish4131305")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3)
    self:EnterSceneLookCamera({x = 938.24, y = 213.95, z = 338.45}, 0, 3, true, false)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest41313:OnSubFailed4131305(arg1)
    print("OnSubFailed4131305")
end

function Quest41313:OnSubStart4131306(arg1)
    print("OnSubStart4131306")
    self:WeatherControl()
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710304Data.id, 1)
end

function Quest41313:OnSubFinish4131306(arg1)
    print("OnSubFinish4131306")
end

function Quest41313:OnSubFailed4131306(arg1)
    print("OnSubFailed4131306")
end

function Quest41313:OnSubStart4131307(arg1)
    print("OnSubStart4131307")
    self.WeatherControl(self)
    self.NotifyTo(self, npcs.Npc2202Data.alias, 1, true)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc220201Data.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc220201Data.id)
        self:RequestInteraction(npcs.Npc220201Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest41313:OnSubFinish4131307(arg1)
    print("OnSubFinish4131307")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41313:OnSubFailed4131307(arg1)
    print("OnSubFailed4131307")
end

function Quest41313:OnSubStart4131308(arg1)
    print("OnSubStart4131308")
    self:WeatherControl()
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
end

function Quest41313:OnSubFinish4131308(arg1)
    print("OnSubFinish4131308")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:DestoryPaimon()
    end)
end

function Quest41313:OnSubFailed4131308(arg1)
    print("OnSubFailed4131308")
end

function Quest41313:OnSubStart4131309(arg1)
    print("OnSubStart4131309")
    self:WeatherControl()
    actorMgr:CreateActorWithPos(datas.Q41313Trigger4_.alias, datas.Q41313Trigger4_.script, datas.Q41313Trigger4_.id, 0, datas.Q41313Trigger4_.point.pos, datas.Q41313Trigger4_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2208Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc220201Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc220801Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc220201Data.alias):DoFreeStyle(1120, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc220801Data.alias):DoFreeStyle(1170, false, nil, true, true)
end

function Quest41313:OnSubFinish4131309(arg1)
    print("OnSubFinish4131309")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:DestoryPaimon()
    end)
end

function Quest41313:OnSubFailed4131309(arg1)
    print("OnSubFailed4131309")
end

function Quest41313:OnSubStart4131310(arg1)
    print("OnSubStart4131310")
    self:WeatherControl()
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2208Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41313Trigger1_.alias, datas.Q41313Trigger1_.script, datas.Q41313Trigger1_.id, 0, datas.Q41313Trigger1_.point.pos, datas.Q41313Trigger1_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc220201Data.alias):DoFreeStyle(1120, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc220801Data.alias):DoFreeStyle(1170, false, nil, true, true)
end

function Quest41313:OnSubFinish4131310(arg1)
    print("OnSubFinish4131310")
end

function Quest41313:OnSubFailed4131310(arg1)
    print("OnSubFailed4131310")
end

function Quest41313:OnSubStart4131311(arg1)
    print("OnSubStart4131311")
    self.NotifyTo(self, npcs.Npc2202Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2208Data.alias, 1, true)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.XiaoData.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.XiaoData.id)
        self:RequestInteraction(npcs.XiaoData.alias)
    end, nil, questNpcCreateTask)

    self.GetQuestNpcActor(self, npcs.Npc220201Data.alias):DoFreeStyle(1120, false, nil, true, true)
    self.GetQuestNpcActor(self, npcs.Npc220801Data.alias):DoFreeStyle(1170, false, nil, true, true)
end

function Quest41313:OnSubFinish4131311(arg1)
    print("OnSubFinish4131311")
    local actor = actorMgr:GetActor(datas.Q41313Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41313:OnSubFailed4131311(arg1)
    print("OnSubFailed4131311")
end

function Quest41313:OnSubStart4131312(arg1)
    print("OnSubStart4131312")
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2208Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41313Trigger3_.alias, datas.Q41313Trigger3_.script, datas.Q41313Trigger3_.id, 0, datas.Q41313Trigger3_.point.pos, datas.Q41313Trigger3_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc220201Data.alias):DoFreeStyle(1120, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc220801Data.alias):DoFreeStyle(1170, false, nil, true, true)
end

function Quest41313:OnSubFinish4131312(arg1)
    self:CallDelay(0.5, function(arg1)
        globalActor:ChangeDay24Time(22, true)
    end)

    self:PlayCutsceneIndex(4000501)
    self:NotifyTo(npcs.Npc2202Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2208Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc220201Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
end

function Quest41313:OnSubFailed4131312(arg1)
    print("OnSubFailed4131312")
end

function Quest41313:OnSubStart4131313(arg1)
    print("OnSubStart4131313")
end

function Quest41313:OnSubFinish4131313(arg1)
    print("OnSubFinish4131313")
end

function Quest41313:OnSubFailed4131313(arg1)
    print("OnSubFailed4131313")
end

function Quest41313:OnSubStart4131314(arg1)
    print("OnSubStart4131314")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.XiaoData.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.XiaoData.id)
        self:RequestInteraction(npcs.XiaoData.alias)
    end, nil, questNpcCreateTask)
end

function Quest41313:OnSubFinish4131314(arg1)
    print("OnSubFinish4131314")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:DestoryPaimon()
    end)
end

function Quest41313:OnSubFailed4131314(arg1)
    print("OnSubFailed4131314")
end

function Quest41313:OnSubStart4131320(arg1)
    print("OnSubStart4131320")
end

function Quest41313:OnSubFinish4131320(arg1)
    print("OnSubFinish4131320")
end

function Quest41313:OnSubFailed4131320(arg1)
    print("OnSubFailed4131320")
end

function Quest41313:OnSubStart4131315(arg1)
    print("OnSubStart4131315")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
end

function Quest41313:OnSubFinish4131315(arg1)
    print("OnSubFinish4131315")
end

function Quest41313:OnSubFailed4131315(arg1)
    print("OnSubFailed4131315")
end

function Quest41313:OnSubStart4131319(arg1)
    print("OnSubStart4131319")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 0)
end

function Quest41313:OnSubFinish4131319(arg1)
    print("OnSubFinish4131319")
end

function Quest41313:OnSubFailed4131319(arg1)
    print("OnSubFailed4131319")
end

function Quest41313:OnSubStart4131316(arg1)
    print("OnSubStart4131316")
    actorMgr:CreateActorWithPos(datas.Q41313Trigger1_.alias, datas.Q41313Trigger1_.script, datas.Q41313Trigger1_.id, 0, datas.Q41313Trigger1_.point.pos, datas.Q41313Trigger1_.point.rot, true, false, 3)
end

function Quest41313:OnSubFinish4131316(arg1)
    print("OnSubFinish4131316")
end

function Quest41313:OnSubFailed4131316(arg1)
    print("OnSubFailed4131316")
end

function Quest41313:OnSubStart4131317(arg1)
    print("OnSubStart4131317")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 1)
end

function Quest41313:OnSubFinish4131317(arg1)
    print("OnSubFinish4131317")
end

function Quest41313:OnSubFailed4131317(arg1)
    print("OnSubFailed4131317")
end

function Quest41313:OnSubStart4131318(arg1)
    print("OnSubStart4131318")
end

function Quest41313:OnSubFinish4131318(arg1)
    print("OnSubFinish4131318")
end

function Quest41313:OnSubFailed4131318(arg1)
    print("OnSubFailed4131318")
end

function Quest41313:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 4131307 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4131313)
        end
    elseif arg1 == 2 then
        print("Talk 4131309 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4131320)
        end
    end
end

return Quest41313
