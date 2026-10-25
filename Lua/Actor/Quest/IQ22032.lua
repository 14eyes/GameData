require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22032 = class("Quest22032", QuestActorProxy)
Quest22032.defaultAlias = "Quest22032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203201"] = self.OnSubStart2203201,
        ["2203207"] = self.OnSubStart2203207,
        ["2203202"] = self.OnSubStart2203202,
        ["2203203"] = self.OnSubStart2203203,
        ["2203204"] = self.OnSubStart2203204,
        ["2203205"] = self.OnSubStart2203205,
        ["2203206"] = self.OnSubStart2203206
    }
end

function Quest22032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203201"] = self.OnSubFinish2203201,
        ["2203207"] = self.OnSubFinish2203207,
        ["2203202"] = self.OnSubFinish2203202,
        ["2203203"] = self.OnSubFinish2203203,
        ["2203204"] = self.OnSubFinish2203204,
        ["2203205"] = self.OnSubFinish2203205,
        ["2203206"] = self.OnSubFinish2203206
    }
end

function Quest22032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203201"] = self.OnSubFailed2203201,
        ["2203207"] = self.OnSubFailed2203207,
        ["2203202"] = self.OnSubFailed2203202,
        ["2203203"] = self.OnSubFailed2203203,
        ["2203204"] = self.OnSubFailed2203204,
        ["2203205"] = self.OnSubFailed2203205,
        ["2203206"] = self.OnSubFailed2203206
    }
end

function Quest22032:Start()
    print("Start")
end

function Quest22032:OnDestroy()
    print("OnDestroy")
end

function Quest22032:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest22032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
end

function Quest22032:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22032:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest22032:OnSubStart2203201(arg1)
    print("OnSubStart2203201")
    self:CreateQuestNpc(arg1, npcs.Npc3022Data.id, 1)
end

function Quest22032:OnSubFinish2203201(arg1)
    print("OnSubFinish2203201")
end

function Quest22032:OnSubFailed2203201(arg1)
    print("OnSubFailed2203201")
end

function Quest22032:OnSubStart2203207(arg1)
    print("OnSubStart2203207")
    self:ShowBlackScreen(0.4, 0.8, 0.4, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.PaimonData.id, 1)
        arg1_2:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "")
end

function Quest22032:OnSubFinish2203207(arg1)
    print("OnSubFinish2203207")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22032:OnSubFailed2203207(arg1)
    print("OnSubFailed2203207")
end

function Quest22032:OnSubStart2203202(arg1)
    print("OnSubStart2203202")
end

function Quest22032:OnSubFinish2203202(arg1)
    print("OnSubFinish2203202")
end

function Quest22032:OnSubFailed2203202(arg1)
    print("OnSubFailed2203202")
end

function Quest22032:OnSubStart2203203(arg1)
    print("OnSubStart2203203")
end

function Quest22032:OnSubFinish2203203(arg1)
    print("OnSubFinish2203203")
end

function Quest22032:OnSubFailed2203203(arg1)
    print("OnSubFailed2203203")
end

function Quest22032:OnSubStart2203204(arg1)
    print("OnSubStart2203204")
end

function Quest22032:OnSubFinish2203204(arg1)
    print("OnSubFinish2203204")
end

function Quest22032:OnSubFailed2203204(arg1)
    print("OnSubFailed2203204")
end

function Quest22032:OnSubStart2203205(arg1)
    print("OnSubStart2203205")
end

function Quest22032:OnSubFinish2203205(arg1)
    print("OnSubFinish2203205")
end

function Quest22032:OnSubFailed2203205(arg1)
    print("OnSubFailed2203205")
end

function Quest22032:OnSubStart2203206(arg1)
    print("OnSubStart2203206")
end

function Quest22032:OnSubFinish2203206(arg1)
    print("OnSubFinish2203206")
end

function Quest22032:OnSubFailed2203206(arg1)
    print("OnSubFailed2203206")
end

return Quest22032
