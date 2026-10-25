require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71654 = class("Quest71654", QuestActorProxy)
Quest71654.defaultAlias = "Quest71654"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71654:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71654:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7165404"] = self.OnSubStart7165404,
        ["7165401"] = self.OnSubStart7165401,
        ["7165405"] = self.OnSubStart7165405,
        ["7165402"] = self.OnSubStart7165402,
        ["7165403"] = self.OnSubStart7165403,
        ["7165406"] = self.OnSubStart7165406,
        ["7165407"] = self.OnSubStart7165407,
        ["7165408"] = self.OnSubStart7165408,
        ["7165409"] = self.OnSubStart7165409,
        ["7165410"] = self.OnSubStart7165410,
        ["7165411"] = self.OnSubStart7165411,
        ["7165412"] = self.OnSubStart7165412,
        ["7165413"] = self.OnSubStart7165413,
        ["7165414"] = self.OnSubStart7165414,
        ["7165415"] = self.OnSubStart7165415,
        ["7165416"] = self.OnSubStart7165416,
        ["7165417"] = self.OnSubStart7165417,
        ["7165418"] = self.OnSubStart7165418,
        ["7165419"] = self.OnSubStart7165419,
        ["7165420"] = self.OnSubStart7165420,
        ["7165421"] = self.OnSubStart7165421,
        ["7165422"] = self.OnSubStart7165422,
        ["7165423"] = self.OnSubStart7165423,
        ["7165424"] = self.OnSubStart7165424,
        ["7165425"] = self.OnSubStart7165425,
        ["7165426"] = self.OnSubStart7165426
    }
end

function Quest71654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7165404"] = self.OnSubFinish7165404,
        ["7165401"] = self.OnSubFinish7165401,
        ["7165405"] = self.OnSubFinish7165405,
        ["7165402"] = self.OnSubFinish7165402,
        ["7165403"] = self.OnSubFinish7165403,
        ["7165406"] = self.OnSubFinish7165406,
        ["7165407"] = self.OnSubFinish7165407,
        ["7165408"] = self.OnSubFinish7165408,
        ["7165409"] = self.OnSubFinish7165409,
        ["7165410"] = self.OnSubFinish7165410,
        ["7165411"] = self.OnSubFinish7165411,
        ["7165412"] = self.OnSubFinish7165412,
        ["7165413"] = self.OnSubFinish7165413,
        ["7165414"] = self.OnSubFinish7165414,
        ["7165415"] = self.OnSubFinish7165415,
        ["7165416"] = self.OnSubFinish7165416,
        ["7165417"] = self.OnSubFinish7165417,
        ["7165418"] = self.OnSubFinish7165418,
        ["7165419"] = self.OnSubFinish7165419,
        ["7165420"] = self.OnSubFinish7165420,
        ["7165421"] = self.OnSubFinish7165421,
        ["7165422"] = self.OnSubFinish7165422,
        ["7165423"] = self.OnSubFinish7165423,
        ["7165424"] = self.OnSubFinish7165424,
        ["7165425"] = self.OnSubFinish7165425,
        ["7165426"] = self.OnSubFinish7165426
    }
end

function Quest71654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71654:Start()
    print("Start")
end

function Quest71654:OnDestroy()
    print("OnDestroy")
end

function Quest71654:OnMainFinished(arg1)
    print("OnMainFinished")
    globalActor:StartGuide("GuideHomeWorldFirstPlace")
end

function Quest71654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71654:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71654:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71654:OnSubStart7165404(arg1)
    print("OnSubStart7165404")
    actorUtils.FinishQuestID(false, 7165404)
end

function Quest71654:OnSubFinish7165404(arg1)
    print("OnSubFinish7165404")
end

function Quest71654:OnSubStart7165401(arg1)
    print("OnSubStart7165401")
end

function Quest71654:OnSubFinish7165401(arg1)
    print("OnSubFinish7165401")
end

function Quest71654:OnSubStart7165405(arg1)
    print("OnSubStart7165405")
end

function Quest71654:OnSubFinish7165405(arg1)
    print("OnSubFinish7165405")
end

function Quest71654:OnSubStart7165402(arg1)
    print("OnSubStart7165402")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165402(arg1)
    print("OnSubFinish7165402")
end

function Quest71654:OnSubStart7165403(arg1)
    print("OnSubStart7165403")
end

function Quest71654:OnSubFinish7165403(arg1)
    print("OnSubFinish7165403")
end

function Quest71654:OnSubStart7165406(arg1)
    print("OnSubStart7165406")
end

function Quest71654:OnSubFinish7165406(arg1)
    print("OnSubFinish7165406")
end

function Quest71654:OnSubStart7165407(arg1)
    print("OnSubStart7165407")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165407(arg1)
    print("OnSubFinish7165407")
end

function Quest71654:OnSubStart7165408(arg1)
    print("OnSubStart7165408")
end

function Quest71654:OnSubFinish7165408(arg1)
    print("OnSubFinish7165408")
end

function Quest71654:OnSubStart7165409(arg1)
    print("OnSubStart7165409")
end

function Quest71654:OnSubFinish7165409(arg1)
    print("OnSubFinish7165409")
end

function Quest71654:OnSubStart7165410(arg1)
    print("OnSubStart7165410")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165410(arg1)
    print("OnSubFinish7165410")
end

function Quest71654:OnSubStart7165411(arg1)
    print("OnSubStart7165411")
end

function Quest71654:OnSubFinish7165411(arg1)
    print("OnSubFinish7165411")
end

function Quest71654:OnSubStart7165412(arg1)
    print("OnSubStart7165412")
end

function Quest71654:OnSubFinish7165412(arg1)
    print("OnSubFinish7165412")
end

function Quest71654:OnSubStart7165413(arg1)
    print("OnSubStart7165413")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165413(arg1)
    print("OnSubFinish7165413")
end

function Quest71654:OnSubStart7165414(arg1)
    print("OnSubStart7165414")
end

function Quest71654:OnSubFinish7165414(arg1)
    print("OnSubFinish7165414")
end

function Quest71654:OnSubStart7165415(arg1)
    print("OnSubStart7165415")
end

function Quest71654:OnSubFinish7165415(arg1)
    print("OnSubFinish7165415")
end

function Quest71654:OnSubStart7165416(arg1)
    print("OnSubStart7165416")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165416(arg1)
    print("OnSubFinish7165416")
end

function Quest71654:OnSubStart7165417(arg1)
    print("OnSubStart7165417")
end

function Quest71654:OnSubFinish7165417(arg1)
    print("OnSubFinish7165417")
end

function Quest71654:OnSubStart7165418(arg1)
    print("OnSubStart7165418")
end

function Quest71654:OnSubFinish7165418(arg1)
    print("OnSubFinish7165418")
end

function Quest71654:OnSubStart7165419(arg1)
    print("OnSubStart7165419")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165419(arg1)
    print("OnSubFinish7165419")
end

function Quest71654:OnSubStart7165420(arg1)
    print("OnSubStart7165420")
end

function Quest71654:OnSubFinish7165420(arg1)
    print("OnSubFinish7165420")
end

function Quest71654:OnSubStart7165421(arg1)
    print("OnSubStart7165421")
end

function Quest71654:OnSubFinish7165421(arg1)
    print("OnSubFinish7165421")
end

function Quest71654:OnSubStart7165422(arg1)
    print("OnSubStart7165422")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165422(arg1)
    print("OnSubFinish7165422")
end

function Quest71654:OnSubStart7165423(arg1)
    print("OnSubStart7165423")
end

function Quest71654:OnSubFinish7165423(arg1)
    print("OnSubFinish7165423")
end

function Quest71654:OnSubStart7165424(arg1)
    print("OnSubStart7165424")
end

function Quest71654:OnSubFinish7165424(arg1)
    print("OnSubFinish7165424")
end

function Quest71654:OnSubStart7165425(arg1)
    print("OnSubStart7165425")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({"Paimon"})
    self:LevelLoadFinishSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        end, questNpcCreateTask)
    end)
end

function Quest71654:OnSubFinish7165425(arg1)
    print("OnSubFinish7165425")
end

function Quest71654:OnSubStart7165426(arg1)
    print("OnSubStart7165426")
end

function Quest71654:OnSubFinish7165426(arg1)
    print("OnSubFinish7165426")
end

return Quest71654
