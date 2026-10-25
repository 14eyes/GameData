require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41311 = class("Quest41311", QuestActorProxy)
Quest41311.defaultAlias = "Quest41311"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41311:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41311:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4131101"] = self.OnSubStart4131101,
        ["4131102"] = self.OnSubStart4131102,
        ["4131103"] = self.OnSubStart4131103,
        ["4131104"] = self.OnSubStart4131104,
        ["4131105"] = self.OnSubStart4131105,
        ["4131106"] = self.OnSubStart4131106,
        ["4131107"] = self.OnSubStart4131107,
        ["4131108"] = self.OnSubStart4131108,
        ["4131109"] = self.OnSubStart4131109,
        ["4131110"] = self.OnSubStart4131110,
        ["4131111"] = self.OnSubStart4131111,
        ["4131112"] = self.OnSubStart4131112,
        ["4131115"] = self.OnSubStart4131115
    }
end

function Quest41311:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4131101"] = self.OnSubFinish4131101,
        ["4131102"] = self.OnSubFinish4131102,
        ["4131103"] = self.OnSubFinish4131103,
        ["4131104"] = self.OnSubFinish4131104,
        ["4131105"] = self.OnSubFinish4131105,
        ["4131106"] = self.OnSubFinish4131106,
        ["4131107"] = self.OnSubFinish4131107,
        ["4131108"] = self.OnSubFinish4131108,
        ["4131109"] = self.OnSubFinish4131109,
        ["4131110"] = self.OnSubFinish4131110,
        ["4131111"] = self.OnSubFinish4131111,
        ["4131112"] = self.OnSubFinish4131112,
        ["4131115"] = self.OnSubFinish4131115
    }
end

function Quest41311:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4131101"] = self.OnSubFailed4131101,
        ["4131102"] = self.OnSubFailed4131102,
        ["4131103"] = self.OnSubFailed4131103,
        ["4131104"] = self.OnSubFailed4131104,
        ["4131105"] = self.OnSubFailed4131105,
        ["4131106"] = self.OnSubFailed4131106,
        ["4131107"] = self.OnSubFailed4131107,
        ["4131108"] = self.OnSubFailed4131108,
        ["4131109"] = self.OnSubFailed4131109,
        ["4131110"] = self.OnSubFailed4131110,
        ["4131111"] = self.OnSubFailed4131111,
        ["4131112"] = self.OnSubFailed4131112,
        ["4131115"] = self.OnSubFailed4131115
    }
end

function Quest41311:Start()
    print("Start")
end

function Quest41311:OnDestroy()
    print("OnDestroy")
end

function Quest41311:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(function()
        actorUtils:ShowActivityPage(2002)
    end)
end

function Quest41311:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41311:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc201301Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc202601Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc202501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc209301Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc30039Data.alias, 3)
        self:NotifyTo(npcs.Npc2208Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2013Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2026Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2025Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2093Data.alias, 0, true)
    end)
end

function Quest41311:DestoryPaimon()
    print("DestoryPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest41311:OnSubStart4131101(arg1)
    print("OnSubStart4131101")
    self:NotifyTo(npcs.Npc2208Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc220801Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 0)
end

function Quest41311:OnSubFinish4131101(arg1)
    print("OnSubFinish4131101")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc220801Data.alias, 3)
        self:DestoryPaimon()
        self:NotifyTo(npcs.Npc2208Data.alias, 0, true)
    end)
end

function Quest41311:OnSubFailed4131101(arg1)
    print("OnSubFailed4131101")
end

function Quest41311:OnSubStart4131102(arg1)
    print("OnSubStart4131102")
    self:CreateQuestNpc(arg1, npcs.Npc201301Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc202601Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc202501Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc209301Data.id, 4)
    self:NotifyTo(npcs.Npc2013Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2026Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2059Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2086Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41311Trigger1_.alias, datas.Q41311Trigger1_.script, datas.Q41311Trigger1_.id, 0, datas.Q41311Trigger1_.point.pos, datas.Q41311Trigger1_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc202501Data.alias):DoFreeStyle(5010, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc202601Data.alias):DoFreeStyle(2026, true, nil, true, true)
end

function Quest41311:OnSubFinish4131102(arg1)
    print("OnSubFinish4131102")
end

function Quest41311:OnSubFailed4131102(arg1)
    print("OnSubFailed4131102")
end

function Quest41311:OnSubStart4131103(arg1)
    print("OnSubStart4131103")
    self:RequestInteraction(npcs.Npc201301Data.alias)
    self:NotifyTo(npcs.Npc2013Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2026Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2059Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2086Data.alias, 1, true)
end

function Quest41311:OnSubFinish4131103(arg1)
    print("OnSubFinish4131103")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc201301Data.alias, 3)
        self:NotifyTo(npcs.Npc2013Data.alias, 0, true)
        self:DestoryPaimon()
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest41311:OnSubFailed4131103(arg1)
    print("OnSubFailed4131103")
end

function Quest41311:OnSubStart4131104(arg1)
    print("OnSubStart4131104")
    self:NotifyTo(npcs.Npc2026Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2059Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2086Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc202601Data.alias):DoFreeStyle(2026, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc202501Data.alias):DoFreeStyle(5010, false, nil, true, true)
end

function Quest41311:OnSubFinish4131104(arg1)
    print("OnSubFinish4131104")
end

function Quest41311:OnSubFailed4131104(arg1)
    print("OnSubFailed4131104")
end

function Quest41311:OnSubStart4131105(arg1)
    print("OnSubStart4131105")
    self:NotifyTo(npcs.Npc2026Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2059Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2086Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc202601Data.alias):DoFreeStyle(2026, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc202501Data.alias):DoFreeStyle(5010, false, nil, true, true)
end

function Quest41311:OnSubFinish4131105(arg1)
    print("OnSubFinish4131105")
end

function Quest41311:OnSubFailed4131105(arg1)
    print("OnSubFailed4131105")
end

function Quest41311:OnSubStart4131106(arg1)
    print("OnSubStart4131106")
    self:NotifyTo(npcs.Npc2026Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2059Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2086Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc202601Data.alias):DoFreeStyle(2026, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc202501Data.alias):DoFreeStyle(5010, false, nil, true, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30039Data.alias)
    questNpcActor:TurnTo(M.Euler2DirXZ({x = 0, y = 106.63, z = 0}))
    questNpcActor:DoFreeStyle(1190, false, nil, true, true)
end

function Quest41311:OnSubFinish4131106(arg1)
    print("OnSubFinish4131106")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc202601Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc202501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc209301Data.alias, 3)
        self:DestoryPaimon()
        self:NotifyTo(npcs.Npc2026Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2025Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2093Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2059Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2086Data.alias, 0, true)
    end)
end

function Quest41311:OnSubFailed4131106(arg1)
    print("OnSubFailed4131106")
end

function Quest41311:OnSubStart4131107(arg1)
    print("OnSubStart4131107")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30039Data.alias)
    questNpcActor:TurnTo(M.Euler2DirXZ({x = 0, y = 106.63, z = 0}))
    questNpcActor:DoFreeStyle(1190, false, nil, true, true)
end

function Quest41311:OnSubFinish4131107(arg1)
    print("OnSubFinish4131107")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41311:OnSubFailed4131107(arg1)
    print("OnSubFailed4131107")
end

function Quest41311:OnSubStart4131108(arg1)
    print("OnSubStart4131108")
end

function Quest41311:OnSubFinish4131108(arg1)
    print("OnSubFinish4131108")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41311:OnSubFailed4131108(arg1)
    print("OnSubFailed4131108")
end

function Quest41311:OnSubStart4131109(arg1)
    print("OnSubStart4131108")
end

function Quest41311:OnSubStart4131110(arg1)
    print("OnSubStart4131108")
end

function Quest41311:OnSubStart4131111(arg1)
    print("OnSubStart4131111")
end

function Quest41311:OnSubFinish4131111(arg1)
    print("OnSubFinish4131111")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41311:OnSubFailed4131111(arg1)
    print("OnSubFailed4131111")
end

function Quest41311:OnSubStart4131112(arg1)
    print("OnSubStart4131112")
end

function Quest41311:OnSubFinish4131112(arg1)
    print("OnSubFinish4131112")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41311:OnSubFailed4131112(arg1)
    print("OnSubFailed4131112")
end

function Quest41311:OnSubStart4131115(arg1)
    print("OnSubStart4131115")
end

function Quest41311:OnSubFinish4131115(arg1)
    print("OnSubFinish4131115")
    self.SafeDestroyQuestNpc(self, npcs.Npc30039Data.alias, 3)
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41311:OnSubFailed4131115(arg1)
    print("OnSubFailed4131115")
end

function Quest41311:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 4131112 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4131112)
            actorMgr:GetActor("41316"):FinishQuestID(false, 4131601)
        end
    end
end

return Quest41311
