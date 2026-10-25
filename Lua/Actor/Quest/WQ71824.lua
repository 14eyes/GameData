require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71824 = class("Quest71824", QuestActorProxy)
Quest71824.defaultAlias = "Quest71824"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71824:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71824:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182415"] = self.OnSubStart7182415,
        ["7182401"] = self.OnSubStart7182401,
        ["7182402"] = self.OnSubStart7182402,
        ["7182403"] = self.OnSubStart7182403,
        ["7182414"] = self.OnSubStart7182414,
        ["7182404"] = self.OnSubStart7182404,
        ["7182405"] = self.OnSubStart7182405,
        ["7182406"] = self.OnSubStart7182406,
        ["7182407"] = self.OnSubStart7182407,
        ["7182408"] = self.OnSubStart7182408,
        ["7182409"] = self.OnSubStart7182409,
        ["7182410"] = self.OnSubStart7182410,
        ["7182411"] = self.OnSubStart7182411,
        ["7182412"] = self.OnSubStart7182412,
        ["7182413"] = self.OnSubStart7182413
    }
end

function Quest71824:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182415"] = self.OnSubFinish7182415,
        ["7182401"] = self.OnSubFinish7182401,
        ["7182402"] = self.OnSubFinish7182402,
        ["7182403"] = self.OnSubFinish7182403,
        ["7182414"] = self.OnSubFinish7182414,
        ["7182404"] = self.OnSubFinish7182404,
        ["7182405"] = self.OnSubFinish7182405,
        ["7182406"] = self.OnSubFinish7182406,
        ["7182407"] = self.OnSubFinish7182407,
        ["7182408"] = self.OnSubFinish7182408,
        ["7182409"] = self.OnSubFinish7182409,
        ["7182410"] = self.OnSubFinish7182410,
        ["7182411"] = self.OnSubFinish7182411,
        ["7182412"] = self.OnSubFinish7182412,
        ["7182413"] = self.OnSubFinish7182413
    }
end

function Quest71824:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182415"] = self.OnSubFailed7182415,
        ["7182401"] = self.OnSubFailed7182401,
        ["7182402"] = self.OnSubFailed7182402,
        ["7182403"] = self.OnSubFailed7182403,
        ["7182414"] = self.OnSubFailed7182414,
        ["7182404"] = self.OnSubFailed7182404,
        ["7182405"] = self.OnSubFailed7182405,
        ["7182406"] = self.OnSubFailed7182406,
        ["7182407"] = self.OnSubFailed7182407,
        ["7182408"] = self.OnSubFailed7182408,
        ["7182409"] = self.OnSubFailed7182409,
        ["7182410"] = self.OnSubFailed7182410,
        ["7182411"] = self.OnSubFailed7182411,
        ["7182412"] = self.OnSubFailed7182412,
        ["7182413"] = self.OnSubFailed7182413
    }
end

function Quest71824:Start()
    print("Start")
end

function Quest71824:OnDestroy()
    print("OnDestroy")
end

function Quest71824:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71824:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71824:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc220401Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc231102Data1.alias, 3)
    self:NotifyTo("Npc2204", 0, true)
    self:NotifyTo("Npc2208", 0, true)
end

function Quest71824:FinishHide1()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7182405)
    end
end

function Quest71824:FinishHide2()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7182407)
    end
end

function Quest71824:FinishHide3()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7182409)
    end
end

function Quest71824:DestroyXiaoMing()
    print("DestroyXiaoMing")
    self:DestroyQuestNpcActor(npcs.Npc231102DataEnd.alias, 3)
end

function Quest71824:BlackDestroyFin()
    print("BlackDestroyFin")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.DestroyLandLadyYanxiao, nil, nil, "")
end

function Quest71824:DestroyLandLadyYanxiao()
    print("DestroyLandLadyYanxiao")
    self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc220401Data.alias, 3)
end

function Quest71824:OnSubStart7182415(arg1)
    print("OnSubStart7182415")
end

function Quest71824:OnSubFinish7182415(arg1)
    print("OnSubFinish7182415")
end

function Quest71824:OnSubFailed7182415(arg1)
    print("OnSubFailed7182415")
end

function Quest71824:OnSubStart7182401(arg1)
    print("OnSubStart7182401")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc220401Data.id, 1)
    end)
end

function Quest71824:OnSubFinish7182401(arg1)
    print("OnSubFinish7182401")
end

function Quest71824:OnSubFailed7182401(arg1)
    print("OnSubFailed7182401")
end

function Quest71824:OnSubStart7182402(arg1)
    print("OnSubStart7182402")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2208", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc220801Data.id, 2)
    end)
end

function Quest71824:OnSubFinish7182402(arg1)
    print("OnSubFinish7182402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest71824:OnSubFailed7182402(arg1)
    print("OnSubFailed7182402")
end

function Quest71824:OnSubStart7182403(arg1)
    print("OnSubStart7182403")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2208", 1, true)
        self:NotifyTo("Npc2204", 1, true)
    end)
end

function Quest71824:OnSubFinish7182403(arg1)
    print("OnSubFinish7182403")
end

function Quest71824:OnSubFailed7182403(arg1)
    print("OnSubFailed7182403")
end

function Quest71824:OnSubStart7182414(arg1)
    print("OnSubStart7182414")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2208", 1, true)
    end)
end

function Quest71824:OnSubFinish7182414(arg1)
    print("OnSubFinish7182414")
end

function Quest71824:OnSubFailed7182414(arg1)
    print("OnSubFailed7182414")
end

function Quest71824:OnSubStart7182404(arg1)
    print("OnSubStart7182404")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2208", 1, true)
    end)
end

function Quest71824:OnSubFinish7182404(arg1)
    print("OnSubFinish7182404")
end

function Quest71824:OnSubFailed7182404(arg1)
    print("OnSubFailed7182404")
end

function Quest71824:OnSubStart7182405(arg1)
    print("OnSubStart7182405")
    self:CreateQuestNpc(arg1, npcs.Npc231102Data1.id, 3)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc231102Data1.alias)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.RunToRouteTask(questNpcActor, datas.RouteHide1, function(arg1)
        questNpcActor:DoFreeStyle(5010, true, nil, true, true)
        questNpcActor:DoFreeStateTrigger()
        arg1:CallDelay(1, function(arg1)
            actor:FinishHide1()
        end)
    end)
end

function Quest71824:OnSubFinish7182405(arg1)
    print("OnSubFinish7182405")
    self:DestroyQuestNpcActor(npcs.Npc231102Data1.alias, 3)
end

function Quest71824:OnSubFailed7182405(arg1)
    print("OnSubFailed7182405")
end

function Quest71824:OnSubStart7182406(arg1)
    print("OnSubStart7182406")
end

function Quest71824:OnSubFinish7182406(arg1)
    print("OnSubFinish7182406")
end

function Quest71824:OnSubFailed7182406(arg1)
    print("OnSubFailed7182406")
end

function Quest71824:OnSubStart7182407(arg1)
    print("OnSubStart7182407")
    self:CreateQuestNpc(arg1, npcs.Npc231102Data2.id, 4)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc231102Data2.alias)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.RunToRouteTask(questNpcActor, datas.RouteHide2, function(arg1)
        questNpcActor:DoFreeStyle(5010, true, nil, true, true)
        questNpcActor:DoFreeStateTrigger()
        arg1:CallDelay(1, function(arg1)
            actor:FinishHide2()
        end)
    end)
end

function Quest71824:OnSubFinish7182407(arg1)
    print("OnSubFinish7182407")
    self:DestroyQuestNpcActor(npcs.Npc231102Data2.alias, 3)
end

function Quest71824:OnSubFailed7182407(arg1)
    print("OnSubFailed7182407")
end

function Quest71824:OnSubStart7182408(arg1)
    print("OnSubStart7182408")
end

function Quest71824:OnSubFinish7182408(arg1)
    print("OnSubFinish7182408")
end

function Quest71824:OnSubFailed7182408(arg1)
    print("OnSubFailed7182408")
end

function Quest71824:OnSubStart7182409(arg1)
    print("OnSubStart7182409")
    self:CreateQuestNpc(arg1, npcs.Npc231102Data3.id, 5)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc231102Data3.alias)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.DoFreeStyle(questNpcActor, 5010, true, nil, true, true)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.RunToRouteTask(questNpcActor, datas.RouteHide3, function(arg1)
        questNpcActor:DoFreeStyle(5010, true, nil, true, true)
        questNpcActor:DoFreeStateTrigger()
        arg1:CallDelay(1, function(arg1)
            actor:FinishHide3()
        end)
    end)
end

function Quest71824:OnSubFinish7182409(arg1)
    print("OnSubFinish7182409")
    self:DestroyQuestNpcActor(npcs.Npc231102Data3.alias, 3)
end

function Quest71824:OnSubFailed7182409(arg1)
    print("OnSubFailed7182409")
end

function Quest71824:OnSubStart7182410(arg1)
    print("OnSubStart7182410")
end

function Quest71824:OnSubFinish7182410(arg1)
    print("OnSubFinish7182410")
end

function Quest71824:OnSubFailed7182410(arg1)
    print("OnSubFailed7182410")
end

function Quest71824:OnSubStart7182411(arg1)
    print("OnSubStart7182411")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2208", 1, true)
    end)
end

function Quest71824:OnSubFinish7182411(arg1)
    print("OnSubFinish7182411")
end

function Quest71824:OnSubFailed7182411(arg1)
    print("OnSubFailed7182411")
end

function Quest71824:OnSubStart7182412(arg1)
    print("OnSubStart7182412")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2204", 1, true)
        self:NotifyTo("Npc2208", 1, true)
    end)
end

function Quest71824:OnSubFinish7182412(arg1)
    print("OnSubFinish7182412")
    self:CreateQuestNpc(arg1, npcs.Npc231102DataEnd.id, 6)
    self:CallDelay(2, self.DestroyXiaoMing)
end

function Quest71824:OnSubFailed7182412(arg1)
    print("OnSubFailed7182412")
end

function Quest71824:OnSubStart7182413(arg1)
    print("OnSubStart7182413")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc2208", 1, true)
        self:NotifyTo("Npc2204", 1, true)
    end)
end

function Quest71824:OnSubFinish7182413(arg1)
    print("OnSubFinish7182413")
    self:NotifyTo("Npc2208", 0, true)
    self:NotifyTo("Npc2204", 0, true)
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyLandLadyYanxiao, nil, nil, "")
end

function Quest71824:OnSubFailed7182413(arg1)
    print("OnSubFailed7182413")
end

return Quest71824
