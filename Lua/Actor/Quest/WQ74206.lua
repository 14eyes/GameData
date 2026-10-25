require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74206 = class("Quest74206", QuestActorProxy)
Quest74206.defaultAlias = "Quest74206"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74206:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7420601"] = self.OnSubStart7420601,
        ["7420611"] = self.OnSubStart7420611,
        ["7420610"] = self.OnSubStart7420610,
        ["7420603"] = self.OnSubStart7420603,
        ["7420612"] = self.OnSubStart7420612,
        ["7420604"] = self.OnSubStart7420604,
        ["7420609"] = self.OnSubStart7420609
    }
end

function Quest74206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7420601"] = self.OnSubFinish7420601,
        ["7420611"] = self.OnSubFinish7420611,
        ["7420610"] = self.OnSubFinish7420610,
        ["7420603"] = self.OnSubFinish7420603,
        ["7420612"] = self.OnSubFinish7420612,
        ["7420604"] = self.OnSubFinish7420604,
        ["7420609"] = self.OnSubFinish7420609
    }
end

function Quest74206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74206:Start()
    print("Start")
end

function Quest74206:OnDestroy()
    print("OnDestroy")
end

function Quest74206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74206:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74206:OnSubStart7420601(arg1)
    print("OnSubStart7420601")
end

function Quest74206:OnSubFinish7420601(arg1)
    print("OnSubFinish7420601")
end

function Quest74206:OnSubStart7420611(arg1)
    print("OnSubStart7420611")
end

function Quest74206:OnSubFinish7420611(arg1)
    print("OnSubFinish7420611")
end

function Quest74206:OnSubStart7420610(arg1)
    print("OnSubStart7420610")
end

function Quest74206:OnSubFinish7420610(arg1)
    print("OnSubFinish7420610")
end

function Quest74206:OnSubStart7420603(arg1)
    print("OnSubStart7420603")
end

function Quest74206:OnSubFinish7420603(arg1)
    print("OnSubFinish7420603")
end

function Quest74206:OnSubStart7420612(arg1)
    print("OnSubStart7420612")
    this:CallDelayByQuest("delay", 4, function(arg1)
        actorUtils.FinishQuestID(false, 7420612)
    end)
end

function Quest74206:OnSubFinish7420612(arg1)
    print("OnSubFinish7420612")
end

function Quest74206:OnSubStart7420604(arg1)
    print("OnSubStart7420604")
    actorMgr:CreateActorWithPos("Q7420604Trigger", "Actor/Gadget/Q7420604Trigger", 70900002, 0, {x = 1396.213, y = 227.377, z = 3856.019}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74206:OnSubFinish7420604(arg1)
    print("OnSubFinish7420604")
end

function Quest74206:OnSubStart7420609(arg1)
    print("OnSubStart7420609")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7420609, function(arg1)
            actorUtils.FinishQuestID(false, 7420609)
        end, nil, nil, false)
    end)
end

function Quest74206:OnSubFinish7420609(arg1)
    print("OnSubFinish7420609")
end

return Quest74206
