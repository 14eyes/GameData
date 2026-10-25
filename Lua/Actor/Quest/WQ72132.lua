require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72132 = class("Quest72132", QuestActorProxy)
Quest72132.defaultAlias = "Quest72132"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72132:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213201"] = self.OnSubStart7213201,
        ["7213202"] = self.OnSubStart7213202,
        ["7213204"] = self.OnSubStart7213204,
        ["7213206"] = self.OnSubStart7213206,
        ["7213205"] = self.OnSubStart7213205
    }
end

function Quest72132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213201"] = self.OnSubFinish7213201,
        ["7213202"] = self.OnSubFinish7213202,
        ["7213204"] = self.OnSubFinish7213204,
        ["7213206"] = self.OnSubFinish7213206,
        ["7213205"] = self.OnSubFinish7213205
    }
end

function Quest72132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213201"] = self.OnSubFailed7213201,
        ["7213202"] = self.OnSubFailed7213202,
        ["7213204"] = self.OnSubFailed7213204,
        ["7213206"] = self.OnSubFailed7213206,
        ["7213205"] = self.OnSubFailed7213205
    }
end

function Quest72132:Start()
    print("Start")
end

function Quest72132:OnDestroy()
    print("OnDestroy")
end

function Quest72132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72132:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72132:cutscene()
    print("cutscene")
    self:PlayCutsceneIndex("7213201", self.finishquest, nil, nil, false)
end

function Quest72132:finishquest()
    print("finishquest")
    self:FinishQuestID(false, 7213206)
end

function Quest72132:OnSubStart7213201(arg1)
    print("OnSubStart7213201")
end

function Quest72132:OnSubFinish7213201(arg1)
    print("OnSubFinish7213201")
end

function Quest72132:OnSubFailed7213201(arg1)
    print("OnSubFailed7213201")
end

function Quest72132:OnSubStart7213202(arg1)
    print("OnSubStart7213202")
end

function Quest72132:OnSubFinish7213202(arg1)
    print("OnSubFinish7213202")
end

function Quest72132:OnSubFailed7213202(arg1)
    print("OnSubFailed7213202")
end

function Quest72132:OnSubStart7213204(arg1)
    print("OnSubStart7213204")
end

function Quest72132:OnSubFinish7213204(arg1)
    print("OnSubFinish7213204")
    self:ActionSafeCall(self.cutscene)
end

function Quest72132:OnSubFailed7213204(arg1)
    print("OnSubFailed7213204")
end

function Quest72132:OnSubStart7213206(arg1)
    print("OnSubStart7213206")
end

function Quest72132:OnSubFinish7213206(arg1)
    print("OnSubFinish7213206")
end

function Quest72132:OnSubFailed7213206(arg1)
    print("OnSubFailed7213206")
end

function Quest72132:OnSubStart7213205(arg1)
    print("OnSubStart7213205")
    self:CreateQuestNpc(arg1, npcs.Npc20248Data.id, 1)
end

function Quest72132:OnSubFinish7213205(arg1)
    print("OnSubFinish7213205")
    self:SafeDestroyQuestNpc(npcs.Npc20248Data.alias, 3)
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72132:OnSubFailed7213205(arg1)
    print("OnSubFailed7213205")
end

return Quest72132
