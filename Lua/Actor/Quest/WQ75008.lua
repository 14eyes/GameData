require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75008 = class("Quest75008", QuestActorProxy)
Quest75008.defaultAlias = "Quest75008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500803"] = self.OnSubStart7500803,
        ["7500802"] = self.OnSubStart7500802,
        ["7500801"] = self.OnSubStart7500801
    }
end

function Quest75008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500803"] = self.OnSubFinish7500803,
        ["7500802"] = self.OnSubFinish7500802,
        ["7500801"] = self.OnSubFinish7500801
    }
end

function Quest75008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75008:Start()
    print("Start")
end

function Quest75008:OnDestroy()
    print("OnDestroy")
end

function Quest75008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75008:OnSubStart7500803(arg1)
    print("OnSubStart7500803")
    this:CreateQuestNpc(arg1, npcs.Npc21481Data.id, 0, false, 0)
end

function Quest75008:OnSubFinish7500803(arg1)
    print("OnSubFinish7500803")
    this:SafeDestroyQuestNpc(npcs.Npc21481Data.alias, 3)
end

function Quest75008:OnSubStart7500802(arg1)
    print("OnSubStart7500802")
    actorMgr:CreateActorWithPos("Q7500802DownTrigger", "Actor/Gadget/Q7500802DownTrigger", 70900002, 0, {x = -1399.977, y = -763.78, z = 8015.991}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7500802UpTrigger", "Actor/Gadget/Q7500802UpTrigger", 70900002, 0, {x = -1389.041, y = 72.399, z = 8071.234}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75008:OnSubFinish7500802(arg1)
    print("OnSubFinish7500802")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:CallDelayByQuest("7500802", 1, function(arg1)
            arg1:SetNavigationByMainId(75008, true)
            this:QuestNarratorTask(datas.Narrator_7500801)
        end)
    end)
end

function Quest75008:OnSubStart7500801(arg1)
    print("OnSubStart7500801")
    this:CreateQuestNpc(arg1, npcs.Npc21481Data.id, 0, false, 0)
end

function Quest75008:OnSubFinish7500801(arg1)
    print("OnSubFinish7500801")
    this:SafeDestroyQuestNpc(npcs.Npc21481Data.alias, 3)
end

return Quest75008
