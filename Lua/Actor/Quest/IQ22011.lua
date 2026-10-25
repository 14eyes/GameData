require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22011 = class("Quest22011", QuestActorProxy)
Quest22011.defaultAlias = "Quest22011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201101"] = self.OnSubStart2201101,
        ["2201102"] = self.OnSubStart2201102,
        ["2201103"] = self.OnSubStart2201103,
        ["2201104"] = self.OnSubStart2201104,
        ["2201105"] = self.OnSubStart2201105
    }
end

function Quest22011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201101"] = self.OnSubFinish2201101,
        ["2201102"] = self.OnSubFinish2201102,
        ["2201103"] = self.OnSubFinish2201103,
        ["2201104"] = self.OnSubFinish2201104,
        ["2201105"] = self.OnSubFinish2201105
    }
end

function Quest22011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201101"] = self.OnSubFailed2201101,
        ["2201102"] = self.OnSubFailed2201102,
        ["2201103"] = self.OnSubFailed2201103,
        ["2201104"] = self.OnSubFailed2201104,
        ["2201105"] = self.OnSubFailed2201105
    }
end

function Quest22011:Start()
    print("Start")
end

function Quest22011:OnDestroy()
    print("OnDestroy")
end

function Quest22011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3107Data.alias, 3)
end

function Quest22011:OnSubStart2201101(arg1)
    print("OnSubStart2201101")
    self:CreateQuestNpc(arg1, npcs.Npc3107Data.id, 1)
end

function Quest22011:OnSubFinish2201101(arg1)
    print("OnSubFinish2201101")
end

function Quest22011:OnSubFailed2201101(arg1)
    print("OnSubFailed2201101")
end

function Quest22011:OnSubStart2201102(arg1)
    print("OnSubStart2201102")
end

function Quest22011:OnSubFinish2201102(arg1)
    print("OnSubFinish2201102")
end

function Quest22011:OnSubFailed2201102(arg1)
    print("OnSubFailed2201102")
end

function Quest22011:OnSubStart2201103(arg1)
    print("OnSubStart2201103")
end

function Quest22011:OnSubFinish2201103(arg1)
    print("OnSubFinish2201103")
end

function Quest22011:OnSubFailed2201103(arg1)
    print("OnSubFailed2201103")
end

function Quest22011:OnSubStart2201104(arg1)
    print("OnSubStart2201104")
end

function Quest22011:OnSubFinish2201104(arg1)
    print("OnSubFinish2201104")
end

function Quest22011:OnSubFailed2201104(arg1)
    print("OnSubFailed2201104")
end

function Quest22011:OnSubStart2201105(arg1)
    print("OnSubStart2201105")
end

function Quest22011:OnSubFinish2201105(arg1)
    print("OnSubFinish2201105")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3107Data.alias, 3)
    end, nil, nil, "")
end

function Quest22011:OnSubFailed2201105(arg1)
    print("OnSubFailed2201105")
end

return Quest22011
