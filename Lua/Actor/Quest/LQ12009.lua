require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12009 = class("Quest12009", QuestActorProxy)
Quest12009.defaultAlias = "Quest12009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200901"] = self.OnSubStart1200901,
        ["1200902"] = self.OnSubStart1200902,
        ["1200903"] = self.OnSubStart1200903,
        ["1200904"] = self.OnSubStart1200904,
        ["1200906"] = self.OnSubStart1200906,
        ["1200905"] = self.OnSubStart1200905
    }
end

function Quest12009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200901"] = self.OnSubFinish1200901,
        ["1200902"] = self.OnSubFinish1200902,
        ["1200903"] = self.OnSubFinish1200903,
        ["1200904"] = self.OnSubFinish1200904,
        ["1200906"] = self.OnSubFinish1200906,
        ["1200905"] = self.OnSubFinish1200905
    }
end

function Quest12009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12009:Start()
    print("Start")
end

function Quest12009:OnDestroy()
    print("OnDestroy")
end

function Quest12009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12009:OnSubStart1200901(arg1)
    print("OnSubStart1200901")
    self:CreateQuestNpc(arg1, npcs.Npc3005Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc3005Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest12009:OnSubFinish1200901(arg1)
    print("OnSubFinish1200901")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTaskByData(datas.kaiche1200901)
        end)
    end)
end

function Quest12009:OnSubStart1200902(arg1)
    print("OnSubStart1200902")
end

function Quest12009:OnSubFinish1200902(arg1)
    print("OnSubFinish1200902")
end

function Quest12009:OnSubStart1200903(arg1)
    print("OnSubStart1200903")
end

function Quest12009:OnSubFinish1200903(arg1)
    print("OnSubFinish1200903")
end

function Quest12009:OnSubStart1200904(arg1)
    print("OnSubStart1200904")
end

function Quest12009:OnSubFinish1200904(arg1)
    print("OnSubFinish1200904")
end

function Quest12009:OnSubStart1200906(arg1)
    print("OnSubStart1200906")
    self:NotifyTo(npcs.Npc3005Data.alias, 2, true)
end

function Quest12009:OnSubFinish1200906(arg1)
    print("OnSubFinish1200906")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.kaiche1200902, nil, 12009)
    end)
end

function Quest12009:OnSubStart1200905(arg1)
    print("OnSubStart1200905")
end

function Quest12009:OnSubFinish1200905(arg1)
    print("OnSubFinish1200905")
    self:ShowBlackScreen(0.4, 2, 0.4, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc3005Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3005Data.alias, 0, true)
end

return Quest12009
