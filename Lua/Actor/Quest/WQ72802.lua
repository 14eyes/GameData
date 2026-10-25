require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72802 = class("Quest72802", QuestActorProxy)
Quest72802.defaultAlias = "Quest72802"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72802:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72802:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280201"] = self.OnSubStart7280201,
        ["7280202"] = self.OnSubStart7280202,
        ["7280203"] = self.OnSubStart7280203,
        ["7280204"] = self.OnSubStart7280204,
        ["7280205"] = self.OnSubStart7280205,
        ["7280206"] = self.OnSubStart7280206,
        ["7280207"] = self.OnSubStart7280207
    }
end

function Quest72802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280201"] = self.OnSubFinish7280201,
        ["7280202"] = self.OnSubFinish7280202,
        ["7280203"] = self.OnSubFinish7280203,
        ["7280204"] = self.OnSubFinish7280204,
        ["7280205"] = self.OnSubFinish7280205,
        ["7280206"] = self.OnSubFinish7280206,
        ["7280207"] = self.OnSubFinish7280207
    }
end

function Quest72802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280201"] = self.OnSubFailed7280201,
        ["7280202"] = self.OnSubFailed7280202,
        ["7280203"] = self.OnSubFailed7280203,
        ["7280204"] = self.OnSubFailed7280204,
        ["7280205"] = self.OnSubFailed7280205,
        ["7280206"] = self.OnSubFailed7280206,
        ["7280207"] = self.OnSubFailed7280207
    }
end

function Quest72802:Start()
    print("Start")
end

function Quest72802:OnDestroy()
    print("OnDestroy")
end

function Quest72802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72802:OnSubStart7280201(arg1)
    print("OnSubStart7280201")
end

function Quest72802:OnSubFinish7280201(arg1)
    print("OnSubFinish7280201")
end

function Quest72802:OnSubFailed7280201(arg1)
    print("OnSubFailed7280201")
end

function Quest72802:OnSubStart7280202(arg1)
    print("OnSubStart7280202")
    self:CreateQuestNpc(arg1, npcs.Npc3050Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3049Data.id, 2)
end

function Quest72802:OnSubFinish7280202(arg1)
    print("OnSubFinish7280202")
end

function Quest72802:OnSubFailed7280202(arg1)
    print("OnSubFailed7280202")
end

function Quest72802:OnSubStart7280203(arg1)
    print("OnSubStart7280203")
end

function Quest72802:OnSubFinish7280203(arg1)
    print("OnSubFinish7280203")
end

function Quest72802:OnSubFailed7280203(arg1)
    print("OnSubFailed7280203")
end

function Quest72802:OnSubStart7280204(arg1)
    print("OnSubStart7280204")
end

function Quest72802:OnSubFinish7280204(arg1)
    print("OnSubFinish7280204")
    self:SafeDestroyQuestNpc(npcs.Npc3050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3049Data.alias, 3)
end

function Quest72802:OnSubFailed7280204(arg1)
    print("OnSubFailed7280204")
end

function Quest72802:OnSubStart7280205(arg1)
    print("OnSubStart7280205")
    self:CreateQuestNpc(arg1, npcs.Npc20307Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20307Data.alias):HideSelf()
    actorMgr:CreateActorWithPos("Q7280205Trigger", "Actor/Gadget/Q7280205Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72802House").pos, sceneData:GetDummyPoint(3, "Q72802House").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3050Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3049Data.alias, 1, true)
    end)
end

function Quest72802:OnSubFinish7280205(arg1)
    print("OnSubFinish7280205")
    self:SafeDestroyQuestNpc(npcs.Npc3050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3049Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20307Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72802:OnSubFailed7280205(arg1)
    print("OnSubFailed7280205")
end

function Quest72802:OnSubStart7280206(arg1)
    print("OnSubStart7280206")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3050Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3049Data.alias, 1, true)
    end)
end

function Quest72802:OnSubFinish7280206(arg1)
    print("OnSubFinish7280206")
end

function Quest72802:OnSubFailed7280206(arg1)
    print("OnSubFailed7280206")
end

function Quest72802:OnSubStart7280207(arg1)
    print("OnSubStart7280207")
    self:CreateQuestNpc(arg1, npcs.Npc3050Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3049Data.id, 2)
end

function Quest72802:OnSubFinish7280207(arg1)
    print("OnSubFinish7280207")
    self:ShowBlackScreen(2, 0.5, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3050Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc3049Data.alias, 3)
    end, nil, nil, "")
end

function Quest72802:OnSubFailed7280207(arg1)
    print("OnSubFailed7280207")
end

return Quest72802
