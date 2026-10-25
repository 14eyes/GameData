require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71092 = class("Quest71092", QuestActorProxy)
Quest71092.defaultAlias = "Quest71092"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest71092:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest71092:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7109201"] = self.OnSubStart7109201}
end

function Quest71092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7109201"] = self.OnSubFinish7109201}
end

function Quest71092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71092:Start()
    print("Start")
end

function Quest71092:OnDestroy()
    print("OnDestroy")
end

function Quest71092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71092:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71092:OnSubStart7109201(arg1)
    print("OnSubStart7109201")
    actorMgr:CreateActorWithPos("Q71092Trigger", "Actor/Gadget/Q71092Trigger", 70900002, 0, {x = -681.0151, y = 220.2479, z = 1434.723}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest71092:OnSubFinish7109201(arg1)
    print("OnSubFinish7109201")
    self:PlayCutsceneIndex(7104499, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTask(datas.PaimonReminder71092, nil, "")
        end)
    end, nil, nil, false)
end

return Quest71092
