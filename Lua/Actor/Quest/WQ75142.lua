require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75142 = class("Quest75142", QuestActorProxy)
Quest75142.defaultAlias = "Quest75142"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75142:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75142:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7514205"] = self.OnSubStart7514205, ["7514201"] = self.OnSubStart7514201}
end

function Quest75142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7514205"] = self.OnSubFinish7514205, ["7514201"] = self.OnSubFinish7514201}
end

function Quest75142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75142:Start()
    print("Start")
end

function Quest75142:OnDestroy()
    print("OnDestroy")
end

function Quest75142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75142:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75142:OnSubStart7514205(arg1)
    print("OnSubStart7514205")
    this:CreateQuestNpc(arg1, npcs.Npc21765.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21765.alias, 75142):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21766.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21766.alias, 75142):DoFreeStyle(5010, true, nil, true, true, false, false)
end

function Quest75142:OnSubFinish7514205(arg1)
    print("OnSubFinish7514205")
    this:SetNavigationByMainId(75169, true)
    if this:GetQuestGlobalVar(7514201) == 1 then
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_7514201, nil)
        end)
    end
end

function Quest75142:OnSubStart7514201(arg1)
    print("OnSubStart7514201")
    this:CreateQuestNpc(arg1, npcs.Npc21766.id, 0, false, 0)
end

function Quest75142:OnSubFinish7514201(arg1)
    print("OnSubFinish7514201")
end

return Quest75142
