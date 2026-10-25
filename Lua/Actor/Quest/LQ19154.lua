require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19154 = class("Quest19154", QuestActorProxy)
Quest19154.defaultAlias = "Quest19154"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19154:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915402"] = self.OnSubStart1915402,
        ["1915408"] = self.OnSubStart1915408,
        ["1915401"] = self.OnSubStart1915401,
        ["1915403"] = self.OnSubStart1915403,
        ["1915404"] = self.OnSubStart1915404,
        ["1915409"] = self.OnSubStart1915409,
        ["1915407"] = self.OnSubStart1915407,
        ["1915405"] = self.OnSubStart1915405,
        ["1915406"] = self.OnSubStart1915406
    }
end

function Quest19154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915402"] = self.OnSubFinish1915402,
        ["1915408"] = self.OnSubFinish1915408,
        ["1915401"] = self.OnSubFinish1915401,
        ["1915403"] = self.OnSubFinish1915403,
        ["1915404"] = self.OnSubFinish1915404,
        ["1915409"] = self.OnSubFinish1915409,
        ["1915407"] = self.OnSubFinish1915407,
        ["1915405"] = self.OnSubFinish1915405,
        ["1915406"] = self.OnSubFinish1915406
    }
end

function Quest19154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19154:Start()
    print("Start")
end

function Quest19154:OnDestroy()
    print("OnDestroy")
end

function Quest19154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19154:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    actorMgr:DestroyEntityActor("Q1915402tri", 3, false)
    actorMgr:DestroyEntityActor("Q1915403tri", 3, false)
    actorMgr:DestroyEntityActor("Q1915404tri", 3, false)
    actorMgr:DestroyEntityActor("Q1915405tri", 3, false)
    actorMgr:DestroyEntityActor("Q1915406tri", 3, false)
end

function Quest19154:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19154:OnSubStart1915402(arg1)
    print("OnSubStart1915402")
    this:CreateQuestNpcWithTriggerBlack("Q1915402tri", 1915402, 512, 1, 5, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915402)
end

function Quest19154:OnSubFinish1915402(arg1)
    print("OnSubFinish1915402")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19154:OnSubStart1915408(arg1)
    print("OnSubStart1915408")
end

function Quest19154:OnSubFinish1915408(arg1)
    print("OnSubFinish1915408")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest19154:OnSubStart1915401(arg1)
    print("OnSubStart1915401")
end

function Quest19154:OnSubFinish1915401(arg1)
    print("OnSubFinish1915401")
end

function Quest19154:OnSubStart1915403(arg1)
    print("OnSubStart1915403")
    this:CreateQuestNpcWithTriggerBlack("Q1915403tri", 1915403, 512, 1, 30, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915403)
end

function Quest19154:OnSubFinish1915403(arg1)
    print("OnSubFinish1915403")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19154:OnSubStart1915404(arg1)
    print("OnSubStart1915404")
    this:CreateQuestNpcWithTriggerBlack("Q1915404tri", 1915404, 512, 1, 5, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915404)
end

function Quest19154:OnSubFinish1915404(arg1)
    print("OnSubFinish1915404")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19154:OnSubStart1915409(arg1)
    print("OnSubStart1915409")
end

function Quest19154:OnSubFinish1915409(arg1)
    print("OnSubFinish1915409")
    this:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest19154:OnSubStart1915407(arg1)
    print("OnSubStart1915407")
end

function Quest19154:OnSubFinish1915407(arg1)
    print("OnSubFinish1915407")
end

function Quest19154:OnSubStart1915405(arg1)
    print("OnSubStart1915405")
    this:CreateQuestNpcWithTriggerBlack("Q1915405tri", 1915405, 512, 1, 30, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915405)
end

function Quest19154:OnSubFinish1915405(arg1)
    print("OnSubFinish1915405")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19154:OnSubStart1915406(arg1)
    print("OnSubStart1915406")
    this:CreateQuestNpcWithTriggerBlack("Q1915406tri", 1915406, 512, 1, 5, 1)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915406)
end

function Quest19154:OnSubFinish1915406(arg1)
    print("OnSubFinish1915406")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

return Quest19154
