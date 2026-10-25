require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70030 = class("Quest70030", QuestActorProxy)
Quest70030.defaultAlias = "Quest70030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7003001"] = self.OnSubStart7003001,
        ["7003002"] = self.OnSubStart7003002,
        ["7003003"] = self.OnSubStart7003003,
        ["7003004"] = self.OnSubStart7003004,
        ["7003006"] = self.OnSubStart7003006,
        ["7003007"] = self.OnSubStart7003007,
        ["7003008"] = self.OnSubStart7003008,
        ["7003009"] = self.OnSubStart7003009,
        ["7003010"] = self.OnSubStart7003010
    }
end

function Quest70030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7003001"] = self.OnSubFinish7003001,
        ["7003002"] = self.OnSubFinish7003002,
        ["7003003"] = self.OnSubFinish7003003,
        ["7003004"] = self.OnSubFinish7003004,
        ["7003006"] = self.OnSubFinish7003006,
        ["7003007"] = self.OnSubFinish7003007,
        ["7003008"] = self.OnSubFinish7003008,
        ["7003009"] = self.OnSubFinish7003009,
        ["7003010"] = self.OnSubFinish7003010
    }
end

function Quest70030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7003001"] = self.OnSubFailed7003001,
        ["7003002"] = self.OnSubFailed7003002,
        ["7003003"] = self.OnSubFailed7003003,
        ["7003004"] = self.OnSubFailed7003004,
        ["7003006"] = self.OnSubFailed7003006,
        ["7003007"] = self.OnSubFailed7003007,
        ["7003008"] = self.OnSubFailed7003008,
        ["7003009"] = self.OnSubFailed7003009,
        ["7003010"] = self.OnSubFailed7003010
    }
end

function Quest70030:Start()
    print("Start")
end

function Quest70030:OnDestroy()
    print("OnDestroy")
end

function Quest70030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
end

function Quest70030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7003008) == 2 then
            actor:FinishQuestID(false, 7003008)
        end

        print("Refresh broken Guqin")
    end

    if arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7003009) == 2 then
            actor:FinishQuestID(false, 7003009)
        end

        print("Refresh Repaired Guqin")
    end

    if arg1 == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7003010) == 2 then
            actor:FinishQuestID(false, 7003010)
        end

        print("Refresh broken Guqin")
    end
end

function Quest70030:OnSubStart7003001(arg1)
    print("OnSubStart7003001")
    actorMgr:CreateActorWithPos("Q70030Trigger1", "Actor/Gadget/Q70030Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q70030PlayerPort").pos, sceneData:GetDummyPoint(3, "Q70030PlayerPort").rot, true, false, 3)
end

function Quest70030:OnSubFinish7003001(arg1)
    print("OnSubFinish7003001")
    self:ActorDestroy("Q70030Trigger1")
end

function Quest70030:OnSubFailed7003001(arg1)
    print("OnSubFailed7003001")
end

function Quest70030:OnSubStart7003002(arg1)
    print("OnSubStart7003002")
    print("OnSubStart7003002")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc2433Data.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc2433Data.id, 1)
        self:RequestInteraction(npcs.Npc2433Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest70030:OnSubFinish7003002(arg1)
    print("OnSubFinish7003002")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    end)

    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70030:OnSubFailed7003002(arg1)
    print("OnSubFailed7003002")
end

function Quest70030:OnSubStart7003003(arg1)
    print("OnSubStart7003003")
    actorMgr:CreateActorWithPos("Q70030Trigger2", "Actor/Gadget/Q70030Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q70030KazuhaStart").pos, sceneData:GetDummyPoint(3, "Q70030KazuhaStart").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
end

function Quest70030:OnSubFinish7003003(arg1)
    print("OnSubFinish7003003")
    self:ActorDestroy("Q70030Trigger2")
end

function Quest70030:OnSubFailed7003003(arg1)
    print("OnSubFailed7003003")
end

function Quest70030:OnSubStart7003004(arg1)
    print("OnSubStart7003004")
end

function Quest70030:OnSubFinish7003004(arg1)
    print("OnSubFinish7003004")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70030:OnSubFailed7003004(arg1)
    print("OnSubFailed7003004")
end

function Quest70030:OnSubStart7003006(arg1)
    print("OnSubStart7003006")
end

function Quest70030:OnSubFinish7003006(arg1)
    print("OnSubFinish7003006")
end

function Quest70030:OnSubFailed7003006(arg1)
    print("OnSubFailed7003006")
end

function Quest70030:OnSubStart7003007(arg1)
    print("OnSubStart7003007")
    self:RequestInteraction("Npc1032")
end

function Quest70030:OnSubFinish7003007(arg1)
    print("OnSubFinish7003007")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    end)

    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70030:OnSubFailed7003007(arg1)
    print("OnSubFailed7003007")
end

function Quest70030:OnSubStart7003008(arg1)
    print("OnSubStart7003008")
end

function Quest70030:OnSubFinish7003008(arg1)
    print("OnSubFinish7003008")
end

function Quest70030:OnSubFailed7003008(arg1)
    print("OnSubFailed7003008")
end

function Quest70030:OnSubStart7003009(arg1)
    print("OnSubStart7003009")
end

function Quest70030:OnSubFinish7003009(arg1)
    print("OnSubFinish7003009")
end

function Quest70030:OnSubFailed7003009(arg1)
    print("OnSubFailed7003009")
end

function Quest70030:OnSubStart7003010(arg1)
    print("OnSubStart7003010")
end

function Quest70030:OnSubFinish7003010(arg1)
    print("OnSubFinish7003010")
end

function Quest70030:OnSubFailed7003010(arg1)
    print("OnSubFailed7003010")
end

return Quest70030
