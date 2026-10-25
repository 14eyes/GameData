require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24009 = class("Quest24009", QuestActorProxy)
Quest24009.defaultAlias = "Quest24009"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest24009:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest24009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400901"] = self.OnSubStart2400901,
        ["2400910"] = self.OnSubStart2400910,
        ["2400902"] = self.OnSubStart2400902,
        ["2400903"] = self.OnSubStart2400903,
        ["2400911"] = self.OnSubStart2400911,
        ["2400904"] = self.OnSubStart2400904,
        ["2400905"] = self.OnSubStart2400905,
        ["2400912"] = self.OnSubStart2400912,
        ["2400906"] = self.OnSubStart2400906,
        ["2400907"] = self.OnSubStart2400907,
        ["2400913"] = self.OnSubStart2400913,
        ["2400908"] = self.OnSubStart2400908,
        ["2400909"] = self.OnSubStart2400909,
        ["2400914"] = self.OnSubStart2400914
    }
end

function Quest24009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400901"] = self.OnSubFinish2400901,
        ["2400910"] = self.OnSubFinish2400910,
        ["2400902"] = self.OnSubFinish2400902,
        ["2400903"] = self.OnSubFinish2400903,
        ["2400911"] = self.OnSubFinish2400911,
        ["2400904"] = self.OnSubFinish2400904,
        ["2400905"] = self.OnSubFinish2400905,
        ["2400912"] = self.OnSubFinish2400912,
        ["2400906"] = self.OnSubFinish2400906,
        ["2400907"] = self.OnSubFinish2400907,
        ["2400913"] = self.OnSubFinish2400913,
        ["2400908"] = self.OnSubFinish2400908,
        ["2400909"] = self.OnSubFinish2400909,
        ["2400914"] = self.OnSubFinish2400914
    }
end

function Quest24009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24009:Start()
    print("Start")
end

function Quest24009:OnDestroy()
    print("OnDestroy")
end

function Quest24009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5140Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
end

function Quest24009:OnSubStart2400901(arg1)
    print("OnSubStart2400901")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 1)
    local questGlobalVar = this:GetQuestGlobalVar(2400901)
    local v = this:GetQuestGlobalVar(2400902)
    if questGlobalVar == 0 or v == 4 then
        this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    end
end

function Quest24009:OnSubFinish2400901(arg1)
    print("OnSubFinish2400901")
    this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(0, true, nil, true, true, false, false)
end

function Quest24009:OnSubStart2400910(arg1)
    print("OnSubStart2400910")
end

function Quest24009:OnSubFinish2400910(arg1)
    print("OnSubFinish2400910")
end

function Quest24009:OnSubStart2400902(arg1)
    print("OnSubStart2400902")
end

function Quest24009:OnSubFinish2400902(arg1)
    print("OnSubFinish2400902")
end

function Quest24009:OnSubStart2400903(arg1)
    print("OnSubStart2400903")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400903(arg1)
    print("OnSubFinish2400903")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400911(arg1)
    print("OnSubStart2400911")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400911(arg1)
    print("OnSubFinish2400911")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400904(arg1)
    print("OnSubStart2400904")
end

function Quest24009:OnSubFinish2400904(arg1)
    print("OnSubFinish2400904")
end

function Quest24009:OnSubStart2400905(arg1)
    print("OnSubStart2400905")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400905(arg1)
    print("OnSubFinish2400905")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400912(arg1)
    print("OnSubStart2400912")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400912(arg1)
    print("OnSubFinish2400912")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400906(arg1)
    print("OnSubStart2400906")
end

function Quest24009:OnSubFinish2400906(arg1)
    print("OnSubFinish2400906")
end

function Quest24009:OnSubStart2400907(arg1)
    print("OnSubStart2400907")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400907(arg1)
    print("OnSubFinish2400907")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400913(arg1)
    print("OnSubStart2400913")
    this:CreateQuestNpc(arg1, npcs.Npc13368Data.id, 1)
end

function Quest24009:OnSubFinish2400913(arg1)
    print("OnSubFinish2400913")
    this:SafeDestroyQuestNpc(npcs.Npc13368Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_240091801)
end

function Quest24009:OnSubStart2400908(arg1)
    print("OnSubStart2400908")
end

function Quest24009:OnSubFinish2400908(arg1)
    print("OnSubFinish2400908")
    this:ShowBlackScreen(0.1, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5140Data.alias, 3)
    end, nil, nil, "")
end

function Quest24009:OnSubStart2400909(arg1)
    print("OnSubStart2400909")
end

function Quest24009:OnSubFinish2400909(arg1)
    print("OnSubFinish2400909")
end

function Quest24009:OnSubStart2400914(arg1)
    print("OnSubStart2400914")
end

function Quest24009:OnSubFinish2400914(arg1)
    print("OnSubFinish2400914")
    this:ShowBlackScreen(0.1, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5140Data.alias, 3)
    end, nil, nil, "")
end

return Quest24009
