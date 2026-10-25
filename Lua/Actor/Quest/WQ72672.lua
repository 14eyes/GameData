require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72672 = class("Quest72672", QuestActorProxy)
Quest72672.defaultAlias = "Quest72672"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72672:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72672:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267201"] = self.OnSubStart7267201,
        ["7267202"] = self.OnSubStart7267202,
        ["7267203"] = self.OnSubStart7267203,
        ["7267204"] = self.OnSubStart7267204,
        ["7267205"] = self.OnSubStart7267205
    }
end

function Quest72672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267201"] = self.OnSubFinish7267201,
        ["7267202"] = self.OnSubFinish7267202,
        ["7267203"] = self.OnSubFinish7267203,
        ["7267204"] = self.OnSubFinish7267204,
        ["7267205"] = self.OnSubFinish7267205
    }
end

function Quest72672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72672:Start()
    print("Start")
end

function Quest72672:OnDestroy()
    print("OnDestroy")
end

function Quest72672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72672:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72672:OnSubStart7267201(arg1)
    print("OnSubStart7267201")
end

function Quest72672:OnSubFinish7267201(arg1)
    print("OnSubFinish7267201")
end

function Quest72672:OnSubStart7267202(arg1)
    print("OnSubStart7267202")
    self:CreateQuestNpc(arg1, npcs.Npc3226Data.id, 1)
end

function Quest72672:OnSubFinish7267202(arg1)
    print("OnSubFinish7267202")
end

function Quest72672:OnSubStart7267203(arg1)
    print("OnSubStart7267203")
end

function Quest72672:OnSubFinish7267203(arg1)
    print("OnSubFinish7267203")
end

function Quest72672:OnSubStart7267204(arg1)
    print("OnSubStart7267204")
    self:CreateQuestNpc(arg1, npcs.Npc3226Data.id, 1)
end

function Quest72672:OnSubFinish7267204(arg1)
    print("OnSubFinish7267204")
    self:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3226Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest72672:OnSubStart7267205(arg1)
    print("OnSubStart7267205")
end

function Quest72672:OnSubFinish7267205(arg1)
    print("OnSubFinish7267205")
end

return Quest72672
