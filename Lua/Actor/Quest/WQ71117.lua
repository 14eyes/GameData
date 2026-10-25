require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71117 = class("Quest71117", QuestActorProxy)
Quest71117.defaultAlias = "Quest71117"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71117:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111701"] = self.OnSubStart7111701,
        ["7111702"] = self.OnSubStart7111702,
        ["7111703"] = self.OnSubStart7111703
    }
end

function Quest71117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111701"] = self.OnSubFinish7111701,
        ["7111702"] = self.OnSubFinish7111702,
        ["7111703"] = self.OnSubFinish7111703
    }
end

function Quest71117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71117:Start()
    print("Start")
end

function Quest71117:OnDestroy()
    print("OnDestroy")
end

function Quest71117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71117:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71117:OnSubStart7111701(arg1)
    print("OnSubStart7111701")
end

function Quest71117:OnSubFinish7111701(arg1)
    print("OnSubFinish7111701")
    this:NarratorOnlyTaskByData(datas.Narrator_7111701)
end

function Quest71117:OnSubStart7111702(arg1)
    print("OnSubStart7111702")
    this:CreateQuestNpc(arg1, npcs.Npc21312Data.id, 0)
end

function Quest71117:OnSubFinish7111702(arg1)
    print("OnSubFinish7111702")
end

function Quest71117:OnSubStart7111703(arg1)
    print("OnSubStart7111703")
end

function Quest71117:OnSubFinish7111703(arg1)
    print("OnSubFinish7111703")
    this:SafeDestroyQuestNpc(npcs.Npc21312Data.alias, 3)
end

return Quest71117
