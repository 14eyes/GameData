require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22039 = class("Quest22039", QuestActorProxy)
Quest22039.defaultAlias = "Quest22039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203901"] = self.OnSubStart2203901,
        ["2203902"] = self.OnSubStart2203902,
        ["2203903"] = self.OnSubStart2203903,
        ["2203904"] = self.OnSubStart2203904
    }
end

function Quest22039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203901"] = self.OnSubFinish2203901,
        ["2203902"] = self.OnSubFinish2203902,
        ["2203903"] = self.OnSubFinish2203903,
        ["2203904"] = self.OnSubFinish2203904
    }
end

function Quest22039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203901"] = self.OnSubFailed2203901,
        ["2203902"] = self.OnSubFailed2203902,
        ["2203903"] = self.OnSubFailed2203903,
        ["2203904"] = self.OnSubFailed2203904
    }
end

function Quest22039:Start()
    print("Start")
end

function Quest22039:OnDestroy()
    print("OnDestroy")
end

function Quest22039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22039:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
end

function Quest22039:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22039:OnSubStart2203901(arg1)
    print("OnSubStart2203901")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest22039:OnSubFinish2203901(arg1)
    print("OnSubFinish2203901")
end

function Quest22039:OnSubFailed2203901(arg1)
    print("OnSubFailed2203901")
end

function Quest22039:OnSubStart2203902(arg1)
    print("OnSubStart2203902")
end

function Quest22039:OnSubFinish2203902(arg1)
    print("OnSubFinish2203902")
end

function Quest22039:OnSubFailed2203902(arg1)
    print("OnSubFailed2203902")
end

function Quest22039:OnSubStart2203903(arg1)
    print("OnSubStart2203903")
end

function Quest22039:OnSubFinish2203903(arg1)
    print("OnSubFinish2203903")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3006Data.alias)
end

function Quest22039:OnSubFailed2203903(arg1)
    print("OnSubFailed2203903")
end

function Quest22039:OnSubStart2203904(arg1)
    print("OnSubStart2203904")
end

function Quest22039:OnSubFinish2203904(arg1)
    print("OnSubFinish2203904")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3006Data.alias)
end

function Quest22039:OnSubFailed2203904(arg1)
    print("OnSubFailed2203904")
end

return Quest22039
