require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74188 = class("Quest74188", QuestActorProxy)
Quest74188.defaultAlias = "Quest74188"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74188:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74188:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418801"] = self.OnSubStart7418801,
        ["7418802"] = self.OnSubStart7418802,
        ["7418803"] = self.OnSubStart7418803,
        ["7418804"] = self.OnSubStart7418804
    }
end

function Quest74188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418801"] = self.OnSubFinish7418801,
        ["7418802"] = self.OnSubFinish7418802,
        ["7418803"] = self.OnSubFinish7418803,
        ["7418804"] = self.OnSubFinish7418804
    }
end

function Quest74188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74188:Start()
    print("Start")
end

function Quest74188:OnDestroy()
    print("OnDestroy")
end

function Quest74188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74188:OnSubStart7418801(arg1)
    print("OnSubStart7418801")
    actorMgr:CreateActorWithPos("Q7418801Trigger", "Actor/Gadget/Q7418801Trigger", 70900002, 0, {x = 1554.301, y = 555.845, z = 4329.161}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74188:OnSubFinish7418801(arg1)
    print("OnSubFinish7418801")
end

function Quest74188:OnSubStart7418802(arg1)
    print("OnSubStart7418802")
end

function Quest74188:OnSubFinish7418802(arg1)
    print("OnSubFinish7418802")
end

function Quest74188:OnSubStart7418803(arg1)
    print("OnSubStart7418803")
end

function Quest74188:OnSubFinish7418803(arg1)
    print("OnSubFinish7418803")
end

function Quest74188:OnSubStart7418804(arg1)
    print("OnSubStart7418804")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7418804, function(arg1)
            actorUtils.FinishQuestID(false, 7418804)
        end, nil, nil, false)
    end)
end

function Quest74188:OnSubFinish7418804(arg1)
    print("OnSubFinish7418804")
end

return Quest74188
