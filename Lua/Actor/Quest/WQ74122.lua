require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74122 = class("Quest74122", QuestActorProxy)
Quest74122.defaultAlias = "Quest74122"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74122:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7412202"] = self.OnSubStart7412202,
        ["7412204"] = self.OnSubStart7412204,
        ["7412206"] = self.OnSubStart7412206,
        ["7412207"] = self.OnSubStart7412207,
        ["7412203"] = self.OnSubStart7412203,
        ["7412205"] = self.OnSubStart7412205,
        ["7412201"] = self.OnSubStart7412201
    }
end

function Quest74122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7412202"] = self.OnSubFinish7412202,
        ["7412204"] = self.OnSubFinish7412204,
        ["7412206"] = self.OnSubFinish7412206,
        ["7412207"] = self.OnSubFinish7412207,
        ["7412203"] = self.OnSubFinish7412203,
        ["7412205"] = self.OnSubFinish7412205,
        ["7412201"] = self.OnSubFinish7412201
    }
end

function Quest74122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74122:Start()
    print("Start")
end

function Quest74122:OnDestroy()
    print("OnDestroy")
end

function Quest74122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74122:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74122:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74122:OnSubStart7412202(arg1)
    print("OnSubStart7412202")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 0, npcs.PaimonData.alias)
end

function Quest74122:OnSubFinish7412202(arg1)
    print("OnSubFinish7412202")
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest74122:OnSubStart7412204(arg1)
    print("OnSubStart7412204")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 0, npcs.PaimonData.alias)
end

function Quest74122:OnSubFinish7412204(arg1)
    print("OnSubFinish7412204")
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest74122:OnSubStart7412206(arg1)
    print("OnSubStart7412206")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 0, npcs.PaimonData.alias)
end

function Quest74122:OnSubFinish7412206(arg1)
    print("OnSubFinish7412206")
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest74122:OnSubStart7412207(arg1)
    print("OnSubStart7412207")
end

function Quest74122:OnSubFinish7412207(arg1)
    print("OnSubFinish7412207")
end

function Quest74122:OnSubStart7412203(arg1)
    print("OnSubStart7412203")
end

function Quest74122:OnSubFinish7412203(arg1)
    print("OnSubFinish7412203")
end

function Quest74122:OnSubStart7412205(arg1)
    print("OnSubStart7412205")
end

function Quest74122:OnSubFinish7412205(arg1)
    print("OnSubFinish7412205")
end

function Quest74122:OnSubStart7412201(arg1)
    print("OnSubStart7412201")
end

function Quest74122:OnSubFinish7412201(arg1)
    print("OnSubFinish7412201")
end

return Quest74122
