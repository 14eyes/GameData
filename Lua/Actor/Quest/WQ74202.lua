require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74202 = class("Quest74202", QuestActorProxy)
Quest74202.defaultAlias = "Quest74202"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74202:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7420201"] = self.OnSubStart7420201,
        ["7420203"] = self.OnSubStart7420203,
        ["7420208"] = self.OnSubStart7420208,
        ["7420206"] = self.OnSubStart7420206,
        ["7420207"] = self.OnSubStart7420207,
        ["7420205"] = self.OnSubStart7420205
    }
end

function Quest74202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7420201"] = self.OnSubFinish7420201,
        ["7420203"] = self.OnSubFinish7420203,
        ["7420208"] = self.OnSubFinish7420208,
        ["7420206"] = self.OnSubFinish7420206,
        ["7420207"] = self.OnSubFinish7420207,
        ["7420205"] = self.OnSubFinish7420205
    }
end

function Quest74202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74202:Start()
    print("Start")
end

function Quest74202:OnDestroy()
    print("OnDestroy")
end

function Quest74202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74202:OnSubStart7420201(arg1)
    print("OnSubStart7420201")
end

function Quest74202:OnSubFinish7420201(arg1)
    print("OnSubFinish7420201")
end

function Quest74202:OnSubStart7420203(arg1)
    print("OnSubStart7420203")
end

function Quest74202:OnSubFinish7420203(arg1)
    print("OnSubFinish7420203")
end

function Quest74202:OnSubStart7420208(arg1)
    print("OnSubStart7420208")
end

function Quest74202:OnSubFinish7420208(arg1)
    print("OnSubFinish7420208")
end

function Quest74202:OnSubStart7420206(arg1)
    print("OnSubStart7420206")
end

function Quest74202:OnSubFinish7420206(arg1)
    print("OnSubFinish7420206")
end

function Quest74202:OnSubStart7420207(arg1)
    print("OnSubStart7420207")
    this:CallDelayByQuest("delay", 6, function(arg1)
        actorUtils.FinishQuestID(false, 7420207)
    end)
end

function Quest74202:OnSubFinish7420207(arg1)
    print("OnSubFinish7420207")
end

function Quest74202:OnSubStart7420205(arg1)
    print("OnSubStart7420205")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7420205, function(arg1)
            actorUtils.FinishQuestID(false, 7420205)
        end, nil, nil, false)
    end)
end

function Quest74202:OnSubFinish7420205(arg1)
    print("OnSubFinish7420205")
end

return Quest74202
