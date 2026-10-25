require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73510 = class("Quest73510", QuestActorProxy)
Quest73510.defaultAlias = "Quest73510"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73510:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351001"] = self.OnSubStart7351001}
end

function Quest73510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351001"] = self.OnSubFinish7351001}
end

function Quest73510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73510:Start()
    print("Start")
end

function Quest73510:OnDestroy()
    print("OnDestroy")
end

function Quest73510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
end

function Quest73510:OnSubStart7351001(arg1)
    print("OnSubStart7351001")
    this:CreateQuestNpc(arg1, npcs.Npc30226Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30226Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    if this:GetQuestVar(7351001, 0) == 0 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_7351001, function(arg1)
                this:SetQuestVarByMainId(0, 1)
            end, 73510)
        end)
    end
end

function Quest73510:OnSubFinish7351001(arg1)
    print("OnSubFinish7351001")
    this:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
    this:ClearNarratorTask()
end

return Quest73510
